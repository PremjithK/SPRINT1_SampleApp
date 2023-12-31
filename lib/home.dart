import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Home",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to the page"),
            const SizedBox(
              height: 10,
            ),
            const Text("Good morning"),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Icon(
                Icons.access_alarm,
                size: 20,
              ),
            ),
            TextButton(onPressed: () {}, child: Text("click")),
            ElevatedButton(onPressed: () {}, child: Text('press')),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepOrange,
              child: Column(
                children: [
                  Icon(
                    Icons.access_alarm,
                    size: 20,
                  ),
                
                  // Image.asset(
                  //   'assets/images/img1.png',
                  //   height: 20,
                  //   width: 20,
                  // ),
                  
                  Image.network(
                    'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABU1BMVEX///+e0dIebbDxnlAPER4iXpzTg0Sb0NEAAACh0tPRfDbt076j09SZz9AREyAAABseICzxo1nxoFSi1dMfaqzT6uoAABEAABz2oVHr9fUbHSoWGCQhIy8AABic1dcXaa8qdLQAZKxWlb243N0ACh30nEnk8vHS6ekud7UNVpis19bA4eIIBxgAAAl9pafjkkstZaBgf4OOu70/U1lukZSXxsgfGSFeQS2KXTnVjUyhzcjEm3PejUjWsIHfqnHpo12zxrXR3utfkrJEeaeat9VjhK9HWmEqNz5Yc3glLjc4SlBcdnuGsbNqjJCvdUJ/VzY/LSgsIiPDgkhROStvTDGZZjs1JyVEMCdlRjDLh0mncEDOk17CdTu9pIGztaGLWTWytaG5rJPMtpHAvqO1xbHIlGfTdyqLwc1vqsSgtMFIi7p5oMfU4u6rxNs3b6J9r8F1lLkHf300AAATRklEQVR4nO2d+V8Ux7bAM8zavJ7FacHZaEcZgYEBhlUhXiXiRWIQI+pVNLn3JrnvwSNG8///9Kp6m67q7qpzqmuQfB4nn6gsM93fOafOVkt/8821XMu1XMu1XMu1XMu1XMv/E2nOTc0vLc0uLi6aVMjfs0tL81Nzza99Yxpkbn5psVgslstl8mcx40vR+R79zuLS1NzXvklVac7Pmg5ZRiQOvTk7/1dTJ6EzZGwMZ7ls/IUo55YWwWgspbn0F7DYuVkVOh+yWM7MXmnI5lK5mDFM00hDWS4uXVVznVokfKZhpsDzIRenvjZMVJpLxLWQuyP6S6PBgDFzxRQ5N0scJ2EjcIYGQAeyOHt1GOcWHfWRAWhpwnMZy4tXg7Hp8lHtEUaNhJTxCuixOVv2AzsF1Et4FRiXwomLocGPRhmLS1+Rb8qAJ2bqUja/VuwgA/AS+BzGr+Ny5suXoUBXiuX5S+e7PAW6culqnAeXRroiZLF4qWpEKFBfDlCevTS+ufQu1FJ5UdG4JEudTz8Cra3nByqQl+NwZjUAHnWmS5tK6cElhH8NPtRcKw1yuQH+deS/zLgHYzP9ELTXn5UquVyutIm1U5OW18XMWAfjHKJ/Fi9GcW3QarcI4fIazkxJ+em1R8bYyZlKa6GGvfKs1G51Oi2qQzsOI+GFbvfH/XF5bIhTaRVor28sD3LtWqtGhuEz27KjdpqESABHPyqPKRVPGSUMe+tgeTqXI3zUSHOdZxuHL1a2LFhfgHiZkFGPBzEdoGGsH5YIX67daddyjgwG08ulUudwcysTY6/cy022uh5HYEwFaBdXNqj+cjmiwE47F5LBdGl6Y5OoUgrJfKVfi8pOxiD3fnT4PY2AVIO1Wq3CEFKZKVUOjixcINKNqAZI6IpHmwet5WmXj2qwXeH5HJlefn4k12NYilo96pwCoJnZ2jyolErLHl2unSMKrMXyOeZaIoyYC+gMGk10mCCO5cXzkjv0PKmQEVhJ0KBvrIdb8CygqDO74e5eWvPZmZWN6UB3HiDRYC5Zg56ttlH5uKkLcJFRockE3xgxjE3fsQR4FZqotVoSQGqqGxg1LuoB5MslwfQZ/b69wvNRF9oB4LlqzK3AR2NZSzHFBUKS/ormB82tjQgf0WGHRgkYYq70A5hQS8zg3ahTpCWKtVKZjrnpVq3d6QABCeIG3LOV03sb7h1N4QyvubYcVSDVYatWi8T5ZJl+tm5CIVN7m1n2StTLJBPahyU4hkgGtXWovymmLPq5QSieIbR0AdJs9QiKmG4oNnkNii5rvtAGSBHXpQWHL2mGYjgSGhnTEGrwKM7HqCPWoIhpoiJjo+IoQeRZrJNJlkpFGD8GgzXgfKR6sdgMAdI+kDBbszexNiohzOWWa5sWaG1OUdVOF0fz186nKb7Y90gVyglJDtdeWy9blmmLlalqp6Ga0CRXkXyOKxrdTEimS98fHL54sbYlvLhiIRVSmSVdZWEeavUzIXHaOT/ILq8CuBRSoSldZWFHLU5uhVCZfi51OQrOhg2Fcq8WNVI1wpjXDL6XpnCmwsTbLKqut47iCPF4tUq0SCaRUXJ14ugtdB3VxHVmDD2OptUihST3wQwqkvaN4QZqrBIXca0ZS5MrbbU6PGBu3fI1lUBIci18Bo5trtlrOlwp7aZyRdbysy1ZzDcyTkWHrBQhKgxfeV1LrOi0uUbAoHQgvw3i56mWcWEfpMJRoVg0DzQQtmutDtvMmW6DZlE9R49SIs6REhViM7Y4oQ1xhrB0sIVpEWNGIrYDbB8up+YjY7DFjsHBCrhC9BDhSlxCEpYRPZhYqTj9Rs6Lxk4SCwnhMRH3xorBsNcb/bvT7rRb/Mc02MCupzKggNiJplHWTXQBBrz/ujJTrVYd0FYnV2OQHZkRFxRRAbdssJt6LB+LeENgZzuXqx43VneO3768/+N2qzpzq1ftbb/jfqWE6H47Ag0YyISNeFLfSNsk6Yq0tnvbVaocPkutvmxksw0iN4jUiZB/cr8y/QN2xQ0wYGD9jBH0L1reIgRGXtVPKr2YQmObEFJxCJ1/Nf7RY35j8Bw7EIG+BqtCc82LFbV2LTo/SHTV2HldjYDnqicOYv1GNiC8zxLmKsg7IYgQQPR8r33gz9G33NKn/YqMK/8ue28a2Ub2QZW7eepqPEIirjYbL2+xv1JCE4LaGdh8JmM/dwiJhbp+pvdjdufBqxmf6dYqvfnTVxE1ekokkFmP8C1PuD4WM0W+J3GlTpeNOhk3VvTeUweyevzmVa9KdNl7TUGIGnscY+8fPppPeDLDER6hbwYQEvGLEuzagDqZYJVF9YGjG0K5c/zy9XZ14H29c58zVcedhmWV+wxKK2hCgJliPSnRIWGrtUdhYuYkuHGqy53jNyce8sk7lnHmA4fIOVMFQoCZ4lfu2h26VG0UDXo7rO01RsDZ41czYYiZYwax8d7/oftuKoTSoI8O93Qctju5URzsvcsmS6Nx/GM1NNqqJ2HExtuqD+gS4hbYOCIN+vjla4b1fBDukEVGF8948j43MtYqY6g7t1hCbGKaAUzToGOFaVpsu5tVSyzj6tvXVR/S80uu1H9kBiI+HgLqYPQ7WsbiC6bC364nwwWQ2Z2392+5eUH1fX00UB8w3rStsh1F0uBHD0PaylsJV/gSIw1psn7y9n6PFFAz7UDrjdMw4eC50p4M8UCcxy90Nqz1cAE8syME86yxXs+6lUX99PjD2zcnAfe7kJlO/4As8h0piotE9DCkshci7L2DqLA+suSGI8FXxyElzjzYDX+SwC1Ukoioso/F/vh69MHPyPyMRBrbIYP/6eeREg3wWQ3igaiyUHZv8mXwwbtJaBrCD0G07L0qFEJKNATrCJgflEWAKitl7Z8nR6ZVPU1JmM0GAaP3vjD5z0CJ4sVYDKHI1Sg4GmKkhcIrH/CNCwgIGIlKDNxp9UNh8luf0BCtxeIIRa4Gn3ZnMrunhcIb93Pvba+6gPU0iL7Nb/9UKHz0COWT0CMRuhrknJpLWCgUPDOd4WtaJfESm9598san7jXIEDTAsVGY1eD5iKMhN1Jwyp6ZB6kHoaPEHSeju/WBEjquBqNBIpaAUGUYOoT/ujUahOkRTwki9aSFwg4lNCzcgSmCdhR+TX7G0+FPGgFpO6PXq/6r4OiQLqdDnkYhmKFRCRbOOCw8fDMjzUcRg7NxUqnSty2cUAVi0xDBXhOlnTHUlxIlvhUD1m/Ub8AJyVj84BASX4o/TkTQq1HavUXjIZFV8S3XR63t6M9ivt/I0lFYoPEQXUIJAqJKOMzY30IIs0HfF0aYzTqO5heVc8MEexTUCP85KSesJ2swGz9C6xRwck/lTB9ByPdrJ9zntgsgFALGi6ND6ZLIWEkO+X5Kgws/tuNqHgpuNjQ3AZZV+qbfqpTAQkKl97N/mRQT1gkhypP6hJN7aoTJPVM1QtdMkwkpHz5RpYSnaoCCrrDiQVakQiS3k4AncTKJ8rAQrg5xop3QTWvib9Sdw8YDUsKPirejRijsA9n/nownrDtTvEq1lPooVCOUHKdH7TQmXJBULYt2MT5hoo3KHb2aDpP7QM62yl9iCN0YoVgNF/6tqkE1XyrdMGPv/nwvjlCR796jXXVAFULhnjwfkb9LWk4oE/6WAlAQLZLaNIYByZ4eRxHRmYxv1Pf21AFFjZqEnr4BqrLtv0XMVEVcwsfIs4wYCxMQxtcWwHa6/ZsWQkfu/Q1lpFy3WFBbxBIaku33geym6iGyhLhhaLD3KJgGjtb4JvWiwFTHfqRNifVd+eVYwPDXgho/2qcxEadXw8wUouh7jzAqjGyMFPRp5jgrNeAmSmUXRAhARBmpEZmzEfTauN1cThBEZOP2I10dU0wFHjUz0Yp2br8athP7Hz0DEeNJSaSOeHrREkzmF60M9oR8OxL01Qj34MEwbhSJJoGZ3enebhsM4a86lNiA+hnnAPGoEoRzT0u8meIIaUhMM3XoqRDqZxKGkXD+UGUOOCxqSuTaVI/BlzNjN9AL54CVpmZCUlTJa7iGP0yFbpSPtTHxkqG0Rz8qKZEpshqPmfM1k7dVJrpB4VoM5V5UIApKZNvFwFFoJG+gF6+nUVoTFRa8Etl5N6gj5Q9SHIlkTVRaV4OPiVzD/x60wZbYdZBsflJYIsxJcQ+lRN7N/Jqie+ERShYJpz9gHFXr81M2j5UO+mZEdoBEmsc1uVLcfQxOwHlAsI0KLi9bI5x+IGZsYALuTGiwgOltVL4HMf1AhPvTG3W22XjvUcqP1wBty8dHxKhXg/Qz6tGGP653EXsrom6wL/i5/OjaVjIU7/kYCeqLafhrGISgPTP41DSmBPHzUyEhp8FUbe5AINvz8HwxsdfeE/vTG5F+uA4vk4Ft50Ymbgm9KolDjahQEyBo/yHOTBPbjbKYwY3BX20tz+WBHYmFuJQhWBhp78GnZTRpELgPGOFNRcvn6WIpcPr2mx4NQvdyQ4O+IdsCsTsJBPyoSYPgA1xgq70N6ZTb7ql0PR+V1cmfddko9BAe4DJTSzox/DFxEUpIHgZrElI/HBJ+lCngzSANf/u/ZQve/MVdKck8KcJP3pP6GtiTDr2VpwJTXXV/IXU+6gri7GvpinZBpyuGMEmPq/6PNRFijmyT5TUmaOZ7REgYV+kCqTDew+Bnp3oIUSe2SQMGaINAmNChfLjqysOHzPc1EeIObFPZHhQRnjBJRIRw/4o8dE9Hqe/5UoAkE0ofUzAS7OnsOpSogTADXieBPrlcixI/AgkTZ0QN+BQm/oB9fH8/Yk7ubhq5JEd88WMKwqLwTF2FXV4RQqAKk1aSwqKuJwoHXittL2EJJ4GECZm3Bd8aq3ZouVoebGUsX/7zP5Mw+ei/InxJlAbVngGB38lmmFb57Mv5k7uu/O9/QeXcfcH5l7Mz+gE574XZlaf6YCTsSbvW2ZP97u07tz25cwG9UHPBf83tiYWL8zN6Prp0VXJIlJ8dgIkYBO9ul9wgI9DR/92d0Iso5t0z+SHwYUJFQPB+RIMY1tnFHQ5vYuLOd8DrPOVfevv2wnnRsoCPKUvzDA+5nRrW1tn5kycXvPqc+/wdeJmL8Iu73YUF+uKFiydPzs8AD9VL9dSnpuTNra3z/WG/n4/jozcJvMod5mULC92uq8h8vz/cP5cetZvqcUFCO7XO9vP9fD5/Mw7PkU+gi/zBEHY9JVK5Sd69n98/EzGmfeRTYvJGht5niicC7D4FXYMx0gnCt9ANvnKu0P98lmisaZ8VlBj3ra0Lly8ZsLvQhcWLO/wLu6Ev3Iv0nyTYKqL7lCTx+an1ZSgDnCDD6Q5kiHzHE7LiIQ6/xCIqP4AlJHFD0Xri8Qk12J248wfgAr/HuikekagxBlHPszqXooj7EsCuCzhxG2Km3fj3iCLuRwE1PYicj4rlADCfcE8Uz/X4ciP6JDZSBrHIqlHX8w95b1OUAhJCFxCS1jyVE5KgMYzRogYv4wvjbawRYLyNUvP03SEgrbmQDEMXcehq8YJRosanrM+VA8aRk4lXYbe7EPb20rSmKeebCOyUcTcaHn3IIPqAX8SA1MWEArbcTP+QG+mEm9y4iEHQ0Ps84FE5vBXwJdroKOmihLK0RhYrOCXmh1s640QUMTQIE9wMCyiPFwswwpESL4zxALqR3wzZaKIjZUUSLwCxwpXgsv0vxrgeHz9VLhaHMiONiCStAcQKVwIl5ofjAiSIYT8KVOHE7bvC94TECldGSjy3xgRIEPtoFUrMtAlVYViJfc1eNCRP8SqUxAtYrHBlRAjJ59UkNArhhMK05i7YSEOE+eG4AP9QMVKCKHhLhArDZjouJe6rqJCYaXK3RlL8cjK6+t/HA/ipr0iYnNYAExqecDiEtbiw8lTNSEXZ94L8xSFxzXRIAIewFhdWPqupkAzEpE/8E0qFPiGR/P44AFWNVJDWgBMaTzwNkj/64zDTp8qEidk3PKFxxcFz/h+LNw17UtQwJPVGfFrTlPagOLnpWOjYvGlfnTAhrcHFCpawrx/wO2UjTUxrcLGCSDdECJ25g4v6MJxIihe4WEEl7wPm+/rjRXgYoglj0xpw8RsiHIn+gRgGRA7DhLQGGytYwrxuwE8pHM1EvJleoN8lTNjX2kv8hnM0eMKYSShE8RvIzRChblfzNCVhNEJjit84Qt0x/0/elS6gwvXNaFqDKX7jCP/UTMi7UtoWxTBGy2C8ITCE2p3pZ56QmZ2QSyStQSc0POFnvYDNPEvITk4AJJLWoBMannCo15kywSKP1uBENF7gExqOMK+3gGKCRb6LVmEkrUEWvzGEmktENhziNRhJa1RiBUeoNyCGG4nDrgIgXwZfqLhSllBvQAwCPi2zVQDJ3YU9Q7Ob3kr1Vhe/B4SkflH6+Nm0RilWjJXwzxFhfqhGyMQLpVjBEULXdgIJfRvNK+uQSWuUYgVHqDdtozoc+j0ERcJQWqNQ/I6b8O/9vNeLVScMmalC8Tt2wnx6HU5MBG+3rzYMx02YVoejtEal+L0UQl+UCX3/Lkto/FVxfznCYGW7JFZ0E7Peq04YLFqQ5USJiP4KvitL6KU1soQmuXLxl2FiCP8PNlPEZKebAmAAAAAASUVORK5CYII=',
                    height: 10,
                    width: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
