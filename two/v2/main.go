package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()
	r.GET("/version", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"version": "v2",
		})
	})
	r.GET("/info", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"two version": "v2",
		})
	})
	_ = r.Run(" 0.0.0.0:8002")
}
