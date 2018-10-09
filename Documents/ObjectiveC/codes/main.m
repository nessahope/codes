//
//  main.m
//  Sorting
//
//  Created by Sahil Gogna on 2018-09-26.
//  Copyright © 2018 Sahil Gogna. All rights reserved.
//

#import <Foundation/Foundation.h>
// algo
// first element will always be the minimum in the array
// compare first element with the other elements and swap with smallest
// then increase the index and do the same for rest of the array
void selectionSort(int a[], int numberOfElements){
    int i,j;
    for(i=0;i<numberOfElements;i++){
        for(j=i+1;j<numberOfElements;j++){
            if(a[i]>a[j]){
                int temp;
                temp=a[i];
                a[i] = a[j];
                a[j]=temp;
            }
        }
    }
}

void bubbleSort(int a[], int numberOfElements){
    int i,j;
    bool swapped;
    for(i=0; i<numberOfElements;i++){
        swapped=false;
        for(j=0;j<numberOfElements-1-i;j++){
            if(a[j]>a[j+1]){
                int temp;
                temp=a[j+1];
                a[j+1] = a[j];
                a[j]=temp;
                swapped=true;
            }
        }
        if(!swapped) break;
    }
}

void insertionSort(int a[],int numberOfElements){
    for(int i=1; i<numberOfElements ; i++){
        int value = a[i];
        int hole = i;
        while(hole >0 && a[hole-1] > value){
            a[hole] = a[hole-1];
            hole = hole-1;
        }
        a[hole] = value;
    }
}

void printSortedArray(int a[], int numberOfElements){
    int i;
    for(i=0;i<numberOfElements;i++)
        printf("%d ",a[i]);
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a[5] = {3,2,5,1,6};
        int b[4] = {1,2,3,4};
        int numberOfElements = sizeof(a)/sizeof(a[0]);
//        selectionSort(a,numberOfElements);
//        bubbleSort(b, numberOfElements);
//        insertionSort(a,numberOfElements);
        printSortedArray(a, numberOfElements);
    }
    return 0;
}
