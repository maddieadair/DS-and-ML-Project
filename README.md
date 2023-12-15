# DS-and-ML-Project
Final Project for MATH 4322 (Introduction to Data Science and Machine Learning) using the "concienciaysustancia10k7safe" and "ocean157ksafe" data sets from the "Mental health, personality and lifetime psychedelic use during the COVID-19 pandemic" study from the University of Buenos Aires, of which is available on Zenodo. 

This project explores the relationship between depression and a respondent's OCEAN profile, as well as predicts whether or not their depression score is greater than 3 given their sociodemographic information, drug use, and OCEAN profile using Random Forests and Neural Networks.

- **psychedelicKey.R**: pre-processing of the "_concienciaysustancia10k7safe.csv_" data set.
- **personalityKey.R**: pre-processing of the "_ocean157ksafe.csv_" data set.
- **data-code.R**: Merges the two data sets into one and further pre-processes the data.
- **methods-code.R**: Code for splitting the data into testing and training subsets and performing the Random Forests and Neutal Networks.
