import cv2

cam = cv2.VideoCapture('rtsp://{YOUR_IP}:8000/test')

while cam:
	try:
		ret, frame = cam.read()
		if ret:
			cv2.imshow('vid', frame)
			if cv2.waitKey(1) == ord('q'):
				break
	except:
		break
cam.release()
cv2.destroyAllWindows()

