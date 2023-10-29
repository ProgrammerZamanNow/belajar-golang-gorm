package belajar_golang_gorm

import "time"

type GuestBook struct {
	ID        int64     `gorm:"primary_key;column:id;autoIncrement"`
	Name      string    `gorm:"column:name"`
	Email     string    `gorm:"column:email"`
	Message   string    `gorm:"column:message"`
	CreatedAt time.Time `gorm:"column:created_at;autoCreateTime"`
	UpdatedAt time.Time `gorm:"column:updated_at;autoCreateTime;autoUpdateTime"`
}

func (g *GuestBook) TableName() string {
	return "guest_books"
}
