//
// Created by yourenchun on 2/8/18.
//

#ifndef MAT_H
#define MAT_H

#define MATTEMPLATE template<typename T>

#include <iostream>

enum INITTYPE {
    NONE,
    ZEROS,
    ONES,
    RANDOM
};

MATTEMPLATE
class Mat {
private:
    int cols;
    int rows;
    T **data;

public:
	Mat() {};
    Mat(int rows, int cols, INITTYPE type = NONE);
	Mat(const Mat<T>& mat);

    ~Mat();

    void print();

     T* operator[](int i);// can be read and written.
	 const T* operator[](int i) const;//only can be read.

    Mat<T> operator+(const Mat<T> &A);

    // TODO: const pointer ?
//	const T* Mat<T>::operator[](int i) const;
};

MATTEMPLATE
Mat<T>::Mat(const Mat<T>& mat) {
	this->rows = mat.rows;
	this->cols = mat.cols;
	//this->data= (T**)calloc(this->rows*this->cols, sizeof(T*));
	//memcpy(this->data, mat.data, (this->cols*this->rows) * sizeof(T));
	this->data = new T*[this->rows];
	for (int i = 0;i < this->rows;i++) {
		this->data[i] = new T[this->cols];
	}
	for (int i = 0;i < this->rows;i++) {
		for (int j = 0;j < this->cols;j++) {
			this->data[i][j] = mat.data[i][j];
		}
	}
}

MATTEMPLATE
Mat<T>::Mat(int rows, int cols, INITTYPE type) {
    this->rows = rows;
    this->cols = cols;
    // allocate memory
    this->data = new T *[this->rows];// create pointer array
    for (int i = 0; i < rows; i++) {
        this->data[i] = new T[this->cols];
    }

    for (int i = 0; i < this->rows; i++) {
        for (int j = 0; j < this->cols; j++) {
			if (type == NONE) {
				return;
			}else if(type == ZEROS) {
                this->data[i][j] = 0;
            } else if (type == ONES) {
                this->data[i][j] = 1;
            } else if (type == RANDOM) {
                //TODO
            }
        }
    }
}

MATTEMPLATE
void Mat<T>::print() {
    for (int i = 0; i < this->rows; i++) {
        for (int j = 0; j < this->cols; j++) {
            std::cout << this->data[i][j] << " ";
        }
        std::cout << std::endl;
    }
}

MATTEMPLATE
Mat<T>::~Mat() {
    for (int i = 0; i < this->rows; i++) {
        delete [](this->data[i]);
    }
	delete []this->data;
}

MATTEMPLATE
T* Mat<T>::operator[](int i) {
	std::cout << "operator [] " << std::endl;
	return this->data[i];
	
}

// const instance can only call const function member.
MATTEMPLATE
const T* Mat<T>::operator[](int i) const {
	std::cout << "operator [] const" << std::endl;
	return this->data[i];
	
}

void help_func(const Mat<int> A) {
	std::cout << A[0][0] << std::endl;
}
void test_operator_bracket() {
	Mat<int> A(2, 2, ONES);
	help_func(A);
	A[0][0] = 3;
	std::cout << A[0][0];
}




MATTEMPLATE
Mat<T> Mat<T>::operator+(const Mat<T> &A) {
	//���B����ջ�Ϸ����ڴ棬����B�е�data���ڶ��з����ڴ�ģ���B����֮��data��Ӧ������Ҳ�����ˣ�����޷�return��
	//�����ְ취�����1.дһ���������캯�����������2.BҪ�ڶ��н��д�����
    Mat<T> B(this->rows, this->cols);
    for (int i = 0; i < this->rows; i++) {
        for (int j = 0; j < this->cols; j++) {
            B[i][j] = A[i][j] + (*this)[i][j];
        }
    }
    return B;
}
void test_operator_add() {
	Mat<int> A (2, 3, ZEROS);
	Mat<int> B (2, 3, ONES);
	Mat<int> C= A + B;
	C.print();
}

#endif //MAT_H
