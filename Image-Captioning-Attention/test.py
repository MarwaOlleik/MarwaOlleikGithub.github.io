import tensorflow as tf
from pickle import load
import numpy as np
from flask import Flask
from flask_ngrok import run_with_ngrok
from flask import jsonify
from flask import request, render_template

def load_image(image_path):
    img = tf.io.read_file(image_path)
    img = tf.image.decode_jpeg(img, channels=3)
    img = tf.image.resize(img, (299, 299))
    img = tf.keras.applications.inception_v3.preprocess_input(img)
    return img


image_model = tf.keras.applications.InceptionV3(include_top=False, weights='imagenet')
new_input = image_model.input
hidden_layer = image_model.layers[-1].output

image_features_extract_model = tf.keras.Model(new_input, hidden_layer)

tokenizer = load(open('tokenizer.pkl', 'rb'))
decoder = tf.keras.models.load_model("decoder")
encoder = tf.keras.models.load_model("encoder")

def evaluate(image):

    max_length = 47
    units = 512

    # hidden = decoder.reset_state(batch_size=1)
    hidden = tf.zeros((1, units))

    temp_input = tf.expand_dims(load_image(image), 0)
    img_tensor_val = image_features_extract_model(temp_input)
    img_tensor_val = tf.reshape(img_tensor_val, (img_tensor_val.shape[0],
                                                 -1,
                                                 img_tensor_val.shape[3]))

    features = encoder(img_tensor_val)

    dec_input = tf.expand_dims([tokenizer.word_index['<start>']], 0)
    result = []

    for i in range(max_length):
        predictions, hidden, attention_weights = decoder([dec_input,
                                                         features,
                                                         hidden])

        # predicted_id = tf.random.categorical(predictions, 1)[0][0].numpy()
        predicted_id = np.argmax(predictions)

        if tokenizer.index_word[predicted_id] == '<end>':
            return ' '.join(result)

        result.append(tokenizer.index_word[predicted_id])

        dec_input = tf.expand_dims([predicted_id], 0)

    return ' '.join(result)

app = Flask(__name__)
run_with_ngrok(app) 

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/after', methods=['GET', 'POST'])

def after():
    img = request.files['file1']

    img.save('static/file.jpg')
    print("="*50)
    print("IMAGE SAVED")
    

    result = evaluate('static/file.jpg')
    

    return render_template('after.html', data = result)




if __name__ == '__main__':
    app.run()






