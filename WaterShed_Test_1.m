% loading up the yes and no test images
read_yes_images = imread('Yes/1.jpg');
read_no_images = imread('No/1.jpg');

% resizing the images?
read_yes_images = imresize(read_yes_images, [314,340]);
read_no_images = imresize(read_no_images, [314,340]);

% Displaying the images
figure(1), imshow(read_yes_images); title("Brain MRI Images: Yes");
figure(2), imshow(read_no_images); title("Brain MRI Images: No");


% Removing the noise
noise_Removing_yes_images = imtophat(read_yes_images, strel('disk', 10));
figure(3), imshow(noise_Removing_yes_images); title("Noise Removed YES");

i2 = imadjust(noise_Removing_yes_images);

% Filding the the hols and r
%test_case1_yes = imfill(read_yes_images, 'Holes');
%figure(3), imshow(test_case1_yes); title("Holles");

% Filding the complement of the images
%test_case1_yes_complement = imcomplement(test_case1_yes);
%figure(4), imshow(test_case1_yes_complement); title("complement Holles");
