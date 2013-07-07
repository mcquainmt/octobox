#!/usr/bin/perl -w

$a = 0;
$b = 0;
$c = 0;
$guess = "";
$count = 0;

@characters = qw{
	Mustard
	White
	Plum
	Peacock
	Green
	Scarlet
};

@rooms = qw{
	Kitchen
	Ballroom
	Conservatory
	Dining
	Billiard
	Library
	Lounge
	Hall
	Study
};

@weapons = qw{
	Candlestick
	Wrench
	Rope
	Revolver
	Knife
	Leadpipe
};

format QUESTION =
Was it (A) @<<<<<<< in the (B) @<<<<<<<<<<<< with a (C) @<<<<<<<<<<< ?
$characters[$a], $rooms[$b], $weapons[$c]
.

$~ = "QUESTION";

print("\n");
print("Welcome to Clue!\nI will make a guess and you will correct me.\n");
print("It will look something like this:\n\n");
write;
print("\n");
print("You will then correct me by entering one letter near the wrong choice.\n\n");
print("The characters are: @characters\n");
print("The rooms are: @rooms\n");
print("The weapons are: @weapons\n\n");
print("Make up your scenario and I will guess - Here we go:\n\n");

while (($guess ne "q") && ($guess ne "Q")) {
	++$count;
	write;
	$guess = <STDIN>;
	chomp $guess;
	if ($guess eq "a" or $guess eq "A") {
		++$a;
	} elsif ($guess eq "b" or $guess eq "B") {
		++$b;
	} elsif ($guess eq "c" or $guess eq "C") {
		++$c;
	} else {
		$guess = "Q";
	}
}
print("I guessed the answer in $count tries!\n");