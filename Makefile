expr: y.go
	go build -o expr y.go

y.go: expr.y
	go tool yacc -p "expr" expr.y

clean:
	rm -f expr y.go y.output
