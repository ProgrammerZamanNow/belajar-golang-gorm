package belajar_golang_gorm

import "gorm.io/gorm"

type Todo struct {
	gorm.Model
	UserId      string `gorm:"column:user_id"`
	Title       string `gorm:"column:title"`
	Description string `gorm:"column:description"`
}

func (t *Todo) TableName() string {
	return "todos"
}
