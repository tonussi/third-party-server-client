import requests
import requests.exceptions
import json


class SimpleHttpLogClientPost(object):
    def __init__(self, address, port) -> None:
        self.api_url = f"http://{address}:{port}"

    def perform(self, data):
        payload = json.dumps({
            "data": data.decode("utf-8")
        })
        headers = {
            'Authorization': 'Basic cm9vdDpyb290cGFzc3dvcmQ=',
            'Content-Type': 'application/json'
        }
        return requests.request("POST", f"{self.api_url}/_api/document/inserts", headers=headers, data=payload)


class SimpleHttpLogClientGet(object):
    def __init__(self, address, port) -> None:
        self.api_url = f"http://{address}:{port}"

    def perform(self, line_number):
        headers = {
            'Authorization': 'Basic cm9vdDpyb290cGFzc3dvcmQ=',
            'Content-Type': 'application/json'
        }
        return requests.request("GET", f"{self.api_url}/_api/document/inserts/{line_number}", headers=headers)
