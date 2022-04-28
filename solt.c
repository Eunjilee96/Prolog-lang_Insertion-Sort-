void insertion_sort(int list[], int size)
{
	int i, j, insertVal;
	
	for (i = 1; i < size; i++) {
		insertVal = list[i];
		for (j = i; j > 0 && insertVal < list[j - 1]; j--) {
			list[j] = list[j - 1];
		}
		list[j] = insertVal;
	}
}

ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

struct node {
	int data;
	struct node *next;
};

void insertion_sort(struct node **head)
{
	struct node *next, *sortedTail, *insertNode;
	next = *head ? (*head)->next : NULL;
	sortedTail = *head;
	
	while (next) {
		insertNode = next;
		next = next->next;
		insertNode->next = NULL;
		
		if (insertNode->data < sortedTail->data) {
			struct node *t1 = *head;
			struct node *t2 = NULL;
			
			while (t1 && t1->data < insertNode->data ) {
				t2 = t1;
				t1 = t1->next;
			}
			
			if (t2) {
				t2->next = insertNode;
			}
			else {
				*head = insertNode;
			}
			
			insertNode->next = t1;
		}
		else {
			sortedTail->next = insertNode;
			sortedTail = sortedTail->next;
		}
	}
}

