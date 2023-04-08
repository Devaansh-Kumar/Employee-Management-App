import requests as req

res = req.get('https://fdeployserver.up.railway.app/challenge').json()
print("Tokens and Numbers at /challenge:", res)

response = {"token": res["token"], "answer": res["num1"]+res["num2"]}
print("Final Answer:", response)

res = req.post('https://fdeployserver.up.railway.app/deploy',json=response)
print("Request Status: ", res.text)