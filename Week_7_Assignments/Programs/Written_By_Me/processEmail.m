%   Given a vocabulary list, we can map each word in the preprocessed emails into a list of word indices that contains the index of the word in the vocabulary list.
%   EMAILFEATURES takes in a word_indices vector and produces a feature vector
%   from the word indices. x = EMAILFEATURES(word_indices) takes in a word_indices vector and 
%   produces a feature vector from the word indices. word_indices = PROCESSEMAIL(email_contents) preprocesses 
%   the body of an email and returns a list of indices of the 
%   words contained in the email. 

function word_indices = processEmail(emal_contents)

%% Initializing some useful values

vocabList = getVocabList(); % Load Vocabulary
l = 0;                      % Useful value for makign sure that we don't print humongous lines of text. 

%% The following array shall be returned correctly at the end of this program.
word_indices = [];

%% ========================== Preprocess Email ===========================

% Uncomment the following lines if you are working with raw emails with the
% full headers

% hdrstart = strfind(email_contents, ([char(10) char(10)]));
% email_contents = email_contents(hdrstart(1):end);

email_contents = lower(email_contents);                                          % all lower case
email_contents = regexprep(email_contents, '<[^<>]+>', ' ');                     % Strip all HTML
email_contents = regexprep(email_contents, '[0-9]+', 'number');                  % Substitutes numbers from 0-9 with the string 'number'
email_contents = regexprep(email_contents, '(http|https)://[^\s]*', 'httpaddr'); % Substitute URLS with the string 'httpaddr'
email_contents = regexprep(email_contents, '[^\s]+@[^\s]+', 'emailaddr');        % Substitute Email Addresses with the sting 'emailaddr'
email_contents = regexprep(email_contents, '[$]+', 'dollar');                    % Substitutes dollar signs with the string 'dollar'


%% ========================== Tokenize Email ===========================

fprintf('\n==== Processed Email ====\n\n');         

while ~isempty(email_contents)                      % Runs the code until all the words have been processed.
     [str, email_contents] = strtok(email_contents, [' @$/#.-:&*+=[]?!(){},''">_<;%' char(10) char(13)]); % Tokenize and also get rid of any punctuation
     str = regexprep(str, '[^a-zA-Z0-9]', '');                                                            % Remove any non alphanumeric characters

     try str = porterStemmer(strtrim(str));          % Stemming the word (discount / discounts / discounted is the same). 
     catch str = ''; continue;                       % The porterStemmer sometimes has issues, so we use a try catch block.
     end
     
     if length(str) < 1                              % If the strings is shorter than 1 character (spaces), skip it.
        continue;
     end

     match = strcmp(str, vocabList);                 % Returns a logical array, with zeros on the indexes if the word is not contained in the vocabList, and 1's on the indexes that it is.
     
     if size(find(match), 1) >= 1                    % If we have 1 or more matches, continue.
        word_indices = [word_indices; find(match)];  % Add the word to the word_indices array.
     else
        continue
     end
     if (l + length(str) + 1) > 78                   % Making sure we don't print out humongous bodies of text.   
        fprintf('\n');
        l = 0;
     end
     fprintf('%s ', str);                            % Prints the word that is currently being processed.
     l = l + length(str) + 1;                        % Adds the length of that word to l. Essentially this code is needed to print out the processed words in a readable manner.
end

fprintf('\n\n=========================\n');

end
