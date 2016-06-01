quark 0.6.100;
class Matrix<T> {

	int width;
	int height;
	List<List<T>> columns;

	Matrix(int width, int height) {
	    self.width = width;
	    self.height = height;
	    columns = [];
	    while (columns.size() < width) {
		List<T> column = [];
		while (column.size() < height) {
		    column.add(null);
		}
		columns.add(column);
	    }
	}

	T __get__(int i, int j) {
	    return columns[i][j];
	}

	void __set__(int i, int j, T value) {
	    columns[i][j] = value;
	}
}

void main(List<String> args) {
    Matrix<int> matrix = new Matrix<int>(3, 3);
    matrix[2, 2] = 123;
    print(matrix[2, 2]);
}
