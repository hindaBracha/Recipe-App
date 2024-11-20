CREATE DATABASE RecipesDB
go

use RecipesDB

--�������
create table Users(
--��� �����
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--�� �����
LastName nvarchar (50) NOT NULL,
--�� ����
FirstName nvarchar (50) NOT NULL,
--������
Email nvarchar(50) NOT NULL,
--�����
Password nvarchar(50) NOT NULL
)

--��������
CREATE TABLE Categories(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��
Name nvarchar(50) NOT NULL
)

--����
CREATE TABLE Levels(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��
Name nvarchar(50) NOT NULL
)

--�������
create TABLE Recipes(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��
Name nvarchar(50) NOT NULL, 
--�� �����
Pic nvarchar(50),
--��� ����
PreparationTime nvarchar(50),
--������ ����
Instructions nvarchar(1000),
--��� ����� - ���� ������
UserId int NOT NULL FOREIGN KEY REFERENCES Users(Id),
--��� �������
CategoryId int NOT NULL FOREIGN KEY REFERENCES Categories(Id),
--��� ���
LevelId int NOT NULL FOREIGN KEY REFERENCES Levels(Id),
--���� ����� �� �����
Note nvarchar(100) 
)

--������
CREATE TABLE Ingredients(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��
Name nvarchar(20) NOT NULL
)

--������ ������
CREATE TABLE IngredientsToRecipe(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��� �����
RecipeId int NOT NULL FOREIGN KEY REFERENCES Recipes(Id),
--��� ����
IngredientId int NOT NULL FOREIGN KEY REFERENCES Ingredients(Id),
--����
Amount nvarchar(50)
)

--������ ������
CREATE TABLE CommentsToRecipe(
--���
Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
--��� �����
RecipeId int NOT NULL FOREIGN KEY REFERENCES Recipes(Id),
--��� �����
UserId int NOT NULL FOREIGN KEY REFERENCES Users(Id),
--�����
Comment nvarchar(100)
)