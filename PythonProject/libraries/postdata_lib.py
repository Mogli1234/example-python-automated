import  random
import  string

def set_title_postData():
    title = 'Example_automated_test_Robot_Framework'
    return title

def set_description_postData():
    description = 'This a is example of text that we use to add a description'
    return description

def set_path_upload_image():
    path= 'C:\\Users\\jesquivel-as\\Documents\\example-python-automated\\PythonProject\\example\\27109.jpg'
    return path

def set_tag():
    tag = 'Hair Accesories'
    return tag

def set_slug():
    slug_random =  ''.join([random.choice(string.ascii_letters + string.digits) for n in range(10)])
    return slug_random
