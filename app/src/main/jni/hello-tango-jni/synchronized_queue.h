//
// Created by Oladapo Afolabi on 1/3/16.
//

#ifndef HELLO_TANGO_JNI_EXAMPLE_SYNCHRONIZED_QUEUE_H_H
#define HELLO_TANGO_JNI_EXAMPLE_SYNCHRONIZED_QUEUE_H_H

#endif //HELLO_TANGO_JNI_EXAMPLE_SYNCHRONIZED_QUEUE_H_H

#include<list>
#include<string>
#include<array>


template <class T>
class SynchronizedQueue{

public:

    SynchronizedQueue(unsigned int size);
    //~SynchronizedQueue();

    void operate(std::string action, T* storage, T* newElement,unsigned int* size,std::list<T> *cpList);

private:
    std::list<T> theQueue;

};


