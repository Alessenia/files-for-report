#! /usr/bin/bash

# Menu

echo   "Available ebooks for convertion and also my report :
        1) Christmas Stories
        2) Christmas Stories by Charles Dickens
        3) My report on HCI
        choose which file you want to convert "

read choice
if [ "$choice" = "1" ];

then


echo   "What type of convertion do you want on Christmas-Stories.epub :
        a) pdf
        b) html
        c) txt
        d) tex
        write your choice :"

    read secondary_choice

    if [ "$secondary_choice" = "a" ];

    then
          echo "converting epub to pdf..."
        pandoc -f epub -t latex -o Christmas-Stories.pdf --epub-chapter-level=1 --pdf-engine=lualatex Christmas-Stories.epub
        echo "The .pdf file is ready."
        echo "Current directory:"
        ls
 
    elif [ "$secondary_choice" = "b" ];

    then
        echo "converting epub to html..."
        pandoc -s Christmas-Stories.epub -o Christmas-Stories.html
        echo "The .html file is ready."
        echo "Current directory:"
        ls

    elif [ "$secondary_choice" = "c" ];

    then
        echo "converting epub to txt..."
        pandoc -s Christmas-Stories.epub -o Christmas-Stories.txt
        echo "The .txt file is ready."
        echo "Current directory:"
        ls

    elif [ "$secondary_choice" = "d" ];

    then
        echo "converting epub to tex..."
        pandoc -s Christmas-Stories.epub -o Christmas-Stories.tex
        echo "The .tex file is ready."
        echo "Current directory:"
        ls

     else
         echo "This choice does not exist"
     fi
    
   
elif [ "$choice" = "2" ];

then

echo   "What type of convertion do you want on Charles-Dickens-Christmas-Sotries.epub :
        a) pdf
        b) html
        c) txt
        d) tex
        write your choice :"

    read secondary_choice

    if [ "$secondary_choice" = "a" ];

    then
         echo "converting epub to pdf..."
        pandoc -f epub -t latex -o Christmas-Stories-by-Dickens.pdf --epub-chapter-level=1 --pdf-engine=lualatex Charles-Dickens-Christmas-Stories.epub
        echo "The .pdf file is ready."
        echo "Current directory:"
        ls
 
    elif [ "$secondary_choice" = "b" ];

    then
        echo "converting epub to html..."
        pandoc -s Charles-Dickens-Christmas-Stories.epub -o Charles-Dickens-Christmas-Stories.html
        echo "The .html file is ready."
        echo "Current directory:"
        ls 

    elif [ "$secondary_choice" = "c" ];

    then
        echo "converting epub to txt..."
        pandoc -s Charles-Dickens-Christmas-Stories.epub -o Charles-Dickens-Christmas-Stories.txt
        echo "The .txt file is ready."
        echo "Current directory:"
        ls 

    elif [ "$secondary_choice" = "d" ];

    then
        echo "converting epub to tex..."
        pandoc -s Charles-Dickens-Christmas-Stories.epub -o Charles-Dickens-Christmas-Stories.tex
        echo "The .tex file is ready."
        echo "Current directory:"
        ls

    else
        echo "This choice does not exist"
    fi

elif [ "$choice" = "3" ];

then

echo   "What type of convertion do you want for my report on HCI :
        a) html
        b) ipynb "

    read secondary_choice

    if [ "$secondary_choice" = "a" ];

    then
        echo "converting md file to html..."
        pandoc -s REPORT.md --metadata title="My HCI Report" -o REPORT.html
        echo "The .html file is ready."
        echo "Current directory:"
        ls  

    elif [ "$secondary_choice" = "b" ];

    then
        echo "converting md to ipynb..."
        pandoc REPORT.md -o REPORT.ipynb
        echo "The .ipynb file is ready."
        echo "Current directory:"
        ls

    else
        echo "This choice does not exist"
    fi

else
        echo "This choice does not exist"
fi
