#include"ilist.h"
#include<iostream>
using namespace std;


/**************************ilist_item**************************/
//�˴�����ֵΪ�������ͣ�ʹ��ʹ�øú������Զ�_value�����޸�
template < class elemType > 
inline elemType & ilist_item< elemType >:: get_value()
{
	return _value;
}
//�˴�����ֵΪ�������ͣ�ʹ��ʹ�øú������Զ�_next�����޸�
template < class elemType > 
inline ilist_item<elemType> * &ilist_item< elemType >::next_item()
{
	return _next;
}


/***************************ilist******************************/


//Ϊ�µ�����������ڴ�ռ�
template< class elemType >
inline ilist_item<elemType> * ilist<elemType>:: new_item( void )
{
	return new ilist_item<elemType>; 
}

//������������Ϊindex��λ�ò���һ��ֵΪvalue��������,������1��ʼ
template< class elemType >
inline bool ilist<elemType>::insert( int index, elemType value )
{

	ilist_item<elemType> * index_adr = _at_front;
	//����λ�ó�����������
	if( index <=0 || index >_size + 1 )
		return false;
	
	if( index == 1 ){  //����λ��Ϊ����ĵ�һ����൱�ڲ�������ͷ
		return insert_front( value );
	}
	else if( index == _size +1 ){   //����λ��Ϊ��������һ��+1�����൱�ڲ�������β
		return insert_end( value );
	}
	else{    //��������м�λ�ò���Ԫ��
		ilist_item<elemType> * new_adr = new_item( );
		if( ! new_adr )
			return false;
		new_adr->get_value( ) = value;
		for( int i = 2; i < index; i++ ){    //�������ĵ�index -1��������ĵ�ַ
			index_adr = index_adr->next_item();
		}
		new_adr->next_item() = index_adr->next_item();//���½�������������indexλ�ã����������ϵ
		index_adr->next_item() = new_adr;
		
		_size += 1;
		return true;
	}
}


//��������ͷ
template< class elemType >
inline	bool ilist<elemType>::insert_front( elemType value )
{
	ilist_item<elemType> * front_adr = new_item( );
	if( front_adr ){
		front_adr->get_value() = value;
		if( _at_front ){  //�������Ϊ��
			front_adr->next_item() = _at_front;
			_at_front = front_adr;
		}
		else{//����Ϊ��
			_at_front = front_adr;
			_at_end = front_adr;
		}
		_size += 1;
		return true;
	}
	else 
		return false;

}


//��������β

template< class elemType >
inline bool ilist<elemType>::insert_end( elemType value )
{
	ilist_item<elemType> * end_adr = new_item( );
	if( end_adr ){
		end_adr->get_value() = value;
		if( _at_end ){ //�������Ϊ��
			_at_end->next_item() = end_adr;
			end_adr->next_item() = 0;
			_at_end = end_adr;
		}
		else{  //�������Ϊ��
			_at_front = end_adr;
			_at_end = end_adr;
		}
		_size += 1;
		return true;
	}
	else 
		return false;
}

//�ҵ���һ��ֵΪvalue��������ĵ�ַ
template< class elemType >
inline ilist_item<elemType> * ilist<elemType>:: find( elemType value )
{
	ilist_item<elemType> *adr = _at_front;
	while( adr ){
		if( adr->get_value() == value )
			return adr;
		adr = adr->next_item();
	}
	return 0;
}

//ɾ����һ��ֵΪvalue��������
template< class elemType >
inline	bool ilist<elemType>::remove_value( elemType value )
{
	ilist_item<elemType> *adr = _at_front;
	ilist_item<elemType> *pre = _at_front;
	while( adr ){ //�����Ϊ��
		if( adr->get_value() == value ){  //�������ֵ��value��ͬ
			if( adr == _at_front ){//���������Ϊ��һ��
				return remove_front();
			}
			else if( adr == _at_end ){//���������Ϊ���һ��
				return remove_end();
			}
			else{//������Ϊ�м���
				pre->next_item() = adr->next_item ();
				_size -= 1;
				delete adr;
				return true;
			}
		}
		else{//�������ֵ��value����ȣ������ж���һ��������
			pre = adr;
			adr = adr->next_item();
		}
	}
	return false;
}

template< class elemType >
inline bool ilist<elemType>::remove_index( int index)
{
	int i;
	ilist_item<elemType> *adr = _at_front;
	ilist_item<elemType> *pre = _at_front;
	if( index <=0 || index > _size )
		return false;
	if( index ==1 )
		return remove_front();
	else if( index == _size )
		return remove_end();
	else{
		for( i =2; i <= index; i++ ){
			pre = adr;
			adr = adr->next_item();
		}
		pre->next_item() = adr->next_item();
		delete adr;
		_size -=1;
		return true;
	}
}
//ɾ������ͷ
template< class elemType >
inline	bool ilist<elemType>::remove_front( void )
{
	ilist_item<elemType> *adr = _at_front;
	if( !_at_front )
		return false;
	_at_front = _at_front->next_item();
	if( _at_front ==0 )
		_at_end =0;
	_size -= 1;
	delete adr;
	return true;
}


//ɾ������β
template< class elemType >
inline bool ilist<elemType>::remove_end( void )
{
	ilist_item<elemType> *adr = _at_front;
	//����Ϊ��ʱ�����ش���
	if( !_at_end )
		return false;

	if( adr == _at_end ){  	//����ֻ����һ��ʱ
		delete adr;
		_at_end = 0;
		_at_front = 0;
	}
	else{   //�����������������1��
		while( adr->next_item() != _at_end ){
			adr =adr->next_item();
		}
		adr->next_item() = 0;
		delete _at_end;
		_at_end = adr;
	}
	_size -= 1;
	return true;	
}

//ɾ����������
template< class elemType >
inline bool ilist<elemType>::remove_all( void )
{
	ilist_item<elemType> *adr = _at_front;
	if( !_at_front )
		return false;
	while( adr ){
		remove_front( );
		adr = _at_front;
	}
	return true;

}

template< class elemType >
inline int ilist<elemType>::size( void )
{
	return _size;
}

//��ʾ������
template< class elemType >
inline void ilist< elemType >::display( void )
{
	ilist_item<elemType> *adr = _at_front;
	cout<<"( "<< _size <<" )";
	cout<<"(front  ";
	while( adr ){
		cout<< adr->get_value()<<"  ";
		adr = adr->next_item();
	}
	cout<<"end��"<<endl;
}

template< class elemType >
inline bool ilist< elemType >::reserve( void )
{
	ilist_item<elemType> *end = _at_end;
	int i = 1;
	while( i <= _size ){
		if( insert( i,end->get_value() ) ){
			remove_end();
			end = _at_end;
			i += 1;
		}
		else
			return false;
	}
	return true;
}

template< class elemType >
inline bool ilist< elemType >::contact( ilist catlist )
{
	ilist_item<elemType> *adr = catlist._at_front;
	while( adr ){
		if( insert_end( adr->get_value() ))
			adr = adr->next_item();
		else
			return false;
	}
	return true;
}




