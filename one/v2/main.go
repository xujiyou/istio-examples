package main

import (
	"github.com/gin-gonic/gin"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	r := gin.Default()
	r.GET("/info", func(c *gin.Context) {
		resp, err := http.Get("http://two-service:8002/version")
		if err != nil {
			log.Println(err)
			return
		}
		defer resp.Body.Close()
		body, err := ioutil.ReadAll(resp.Body)

		c.JSON(200, gin.H{
			"one version": "v2",
			"two version": string(body),
		})
	})
	_ = r.Run(" 0.0.0.0:8001")
}
