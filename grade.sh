CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'

FILEPATH="student-submission/ListExamples.java"
echo $FILEPATH

if [ -f $FILEPATH ]
then
    echo $FILEPATH
else
    echo 'didnt find file'
    exit
fi

cp $FILEPATH grading-area
cp TestListExamples.java grading-area
cp -r lib grading-area
ls grading-area

cd grading-area

javac -cp ".;lib/hamcrest-core-1.3.jar;lib/junit-4.13.2.jar" *.java
java -cp ".;lib/junit-4.13.2.jar;lib/hamcrest-core-1.3.jar" org.junit.runner.JUnitCore TestListExamples

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

# Then, add here code to compile and run, and do any post-processing of the
# tests
