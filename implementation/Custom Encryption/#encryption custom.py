import random
import string


index_list1 = [ ]
index_list2 = [ ]
final_list = []
extract = []
decrypted = []
result = ""

def to_base36(num):
    """Convert a number to base-36."""
    chars = "0123456789abcdefghijklmnopqrstuvwxyz"
    if num == 0:
        return chars[0]
    base36 = ""
    while num > 0:
        num, i = divmod(num, 36)
        base36 = chars[i] + base36
    return base36

def from_base36(s):
    """Convert a base-36 string to a number."""
    return int(s, 36)

def encode_index_differences(index_diffs):
    """
    Encode list of index differences to an alphanumeric string.
    """
    encoded = ""
    for diff in index_diffs:
        base36_diff = to_base36(diff)
        # Prefix with the length of the encoded part
        encoded += str(len(base36_diff)) + base36_diff
    return encoded

def decode_index_differences(encoded):
    """
    Decode an alphanumeric string back into the list of index differences.
    """
    decoded = []
    i = 0
    while i < len(encoded):
        length = int(encoded[i])
        i += 1
        base36_diff = encoded[i:i+length]
        decoded.append(from_base36(base36_diff))
        i += length
    return decoded

def extraction(text):
    global extract
    length = len(text)
    extract = []
    for c in range(length):
        result = text[c]
        print("R" + str(c + 1) + ":", result)
        extract.append(result)

def convert(e):
    final_result = "".join(e)
    return final_result






def print_letter(Index_difference):
    final_list = []
    for i in Index_difference:
        if i >= 0 and i <= 25:
            final_list.append(string.ascii_lowercase[i])
        elif i == 26:
            final_list.append(' ')  # Space
        elif i == 27:
            final_list.append(',')  # Comma
        elif i == 28:
            final_list.append('.')  # Full stop
        else:
            final_list.append('?')  # Fallback character for other indices
    return final_list


def encryption(e, extract):
    global index_list1
    global index_list2
    length = len(extract)
    if length > 0:
        Crosser(extract, rand)
        print(extract)
        print(rand)
        index_list1 = gen_index_list1(extract)
        print( str(index_list1))
        index_list2 = gen_index_list2(rand)
        print( str(index_list2))
        index_difference = [(index_list1[i] - index_list2[i]) % 29 for i in range(length)]  # Use % 29 instead of % 26
        print("Index difference:", index_difference)
        for i in range(length):
            e[i] = extract[(i + 1) % length]
        key = encode_index_differences(index_difference)
        print("Key:", key)
        
       
        return index_difference,key








    
def decryption(encrypted_text, key):
    decrypted = ""
    length = len(encrypted_text)
    if length > 0:
        decoded_key = decode_index_differences(key)

        e = [''] * length
        for i in range(length):
            e[i] = encrypted_text[(i - 1) % length]
        index_list1 = gen_index_list1(e)
        original_text_indices = [(index_list1[i] - decoded_key[i]) % 29 for i in range(length)]
        decrypted = print_letter(original_text_indices)
    return decrypted




def stored_decryption(e, result, key):
    length = len(result)
    if key == 1 and length > 0:
        for i in range(length):
            e[i] = result[(i - 1) % length]


def Crosser(text, rand):
    # Ensure text and rand have the same length
    if len(text) != len(rand):
        return "Error: Text and rand must have the same length"
    
    # Perform character swapping
    for i in range(len(text)):
        temp = text[i]
        text[i] = rand[i]
        rand[i] = temp  
    
    # No need to return text and rand; they are modified in place
        
def Uncrosser(rand, text):
    # Ensure rand and text have the same length
    if len(rand) != len(text):
        return "Error: Rand and text must have the same length"
    
    # Perform character swapping in the opposite direction
    for i in range(len(text)):
        temp = rand[i]
        rand[i] = text[i]
        text[i] = temp
    

def letter_gen(text):
    new_set = []  # Initialize an empty list to store the generated letters
    for _ in range(len(text)):  # Iterate over the length of text
        new_set.append(random.choice(string.ascii_lowercase))  # Append a random letter to new_set
    return new_set

def gen_index_list1(rand):
    index_list1 = []
    for char in rand:
        if char.isalpha():
            index_i = string.ascii_lowercase.index(char)
        elif char == ' ':
            index_i = 26  # Assign index for space
        elif char == ',':
            index_i = 27  # Assign index for comma
        elif char == '.':
            index_i = 28  # Assign index for full stop
        else:
            index_i = 29  # Fallback index for other characters
        index_list1.append(index_i)
    return index_list1

def gen_index_list2(rand):
    index_list2 = []
    for char in rand:
        if char.isalpha():
            index_i = string.ascii_lowercase.index(char)
        elif char == ' ':
            index_i = 26  # Assign index for space
        elif char == ',':
            index_i = 27  # Assign index for comma
        elif char == '.':
            index_i = 28  # Assign index for full stop
        else:
            index_i = 29  # Fallback index for other characters
        index_list2.append(index_i)
    return index_list2

    




print("Welcome to RSA MODO:")
while True:
    print("1. Encrypt")
    print("2. Decrypt")
    choice = int(input("Select an option: "))

    if choice == 1:
        text = input("What Text will you like to Encrypt: ").lower().strip()
        
        extraction(text)
        rand = letter_gen(text)  # Assign the generated new_set to rand
        e = [''] * len(extract)
        Index_difference, key = encryption(e, extract)

        
        result = convert(e)
        print(result)

    elif choice == 2:
        dchoice = input("Do you want to convert a current stored encryption: ")
        if dchoice == "yes":
            if result != "":
                print("Current stored encrypted text is "+ result)
                extraction(result)
                e = [''] * len(extract)
                decrypted_result = decryption(result,key)
                print("Decrypted text:", decrypted_result)
                resultd1 = convert(decrypted_result)
                print(resultd1)
                
            else:
                print("There is no stored Text")
        else:
            text = input("What Text will you like to Decrypt: ").lower().strip()
            key = int(input("Enter key: "))
            extraction(text)
            e = [''] * len(extract)
            decryption(e, extract, key)
            print("Decrypted list:", e)
            resultd = convert(e)
            print(resultd)
            


        
    else: 
        print("Exiting...")
        break
