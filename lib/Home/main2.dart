
import 'package:flutter/material.dart';
import 'package:practiseuntitled4/Home/main1.dart';
import 'package:practiseuntitled4/Home/main3.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  int select=0;
final lists=[
  HomePage(),
  Search(),
  Favourite()
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        title: Text(' eMART',style: TextStyle(color:Colors.black ,fontWeight: FontWeight.bold,fontSize: 30)),
        backgroundColor: Colors.blueGrey,
        actions: [
          
          Padding(
            padding: EdgeInsets.all(5),
            child: ClipOval(
              child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFRUZGRgZGRgcGBkaGBocHBoYGBoaGhoYGBwcIS4lHB4rIRgaJzgmKy8xNTU1GiU7QDs0Py40NTEBDAwMEA8QHxISHjQrJSw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAACAQIDBAgEBAQGAQUAAAABAgADEQQSIQUxQVEGImFxgZGh8BMyscFCUtHhByNy8RQzYoKSwrIVFiSi4v/EABoBAAIDAQEAAAAAAAAAAAAAAAIDAAEEBQb/xAAnEQADAQACAgEDAwUAAAAAAAAAAQIRAzESIQQTQVEiYZEUMnGBwf/aAAwDAQACEQMRAD8A0KiOBYoJDCxDRy5sIJFBIsCLCwdGp6NBIoU46FhhZekaGckFo8ViWAG8279JYtrAARaiVWM2/hqRKu+q2zBeta+nDfu4bpV7R6aIEJw653uQMwIA0uGtbXuuItxT6Q2GzWBYsLMHR6dO/VKLTJ/HYvl03ZLi+vG/nDwv8QHAAqUATxZSQO8Kb9mlxBrgr8GmW/wby0IiZFeniZwGosEP4gwJH+22vGabAbRo1xelUV+YB1HeDqJnqKntD5Y6ViSsesOcLLFMfIyVicsfKwrQWxqGskPJHAsUFgthoaCQ8sdCwwsHS8GcsEfywSaTCvCxWWLCwws7rR5GaEZYpYvLCtFuR00GBBDEzvTHbRw1MKhtUc2HHKttW79wHf2QUteGheyP0r6VDD/y6RVqt+tcEhBbjwzbtJgMXtR67lncljr2f7RuEgsGa7MSSxJJJuSTvJPPUx50CLc7yo8gdfrNcxg6ZSX7iqjAWspFxY8b98bNQm+mm890L4gd7/hFgPE6fWNtjCjlbXAIt3Xv6wsQxDzOTY8BpHg2m/iR9xfvEg4nE33bgQR9/fZGErEX97pWhYT3r5hc6EH39I7gce6MHR2V1Nwymx14HnK531J84SNZoNY+yI3mE6WO1RKiqMyq5qruD2QkBQPxHJpyNhxnQ8HiVqIlRdzqGF9+vA9s4bs2syuCACbqePDu7/Sdo6P4fJhqSa6Jx3+M5nyJmX6NUeyfBaKtBaY2PkSBFgQBYsCC2GggsUFigIdpRYnLBF2gkIQMsGWOWgtPQM8ZLG7QWi7QrRbNEiZx3bOMNXEO5ubu9mvvTMcgA4ALYefOdlCznHT3ZqUCjJbM+hslhZeO/wCbdc8dd0via8h8aZSriCu4DkbiRMRUL2I3cuXMDsj1CgajBbXN/SdD2ZsCkqAMoPE6R134m7jjyOXqjcjw9ImvTJ1O+dip7Go7gi2PZKvanRqm+gFt9rf33Rf1EO+mcu4QlWaut0ZyOVJ04GIOxMsnmifSZnADAg113TQPs9RIuMwNkzAbpPIj48LfoZsJ67q+U5Fa5bhca5Qec64iWAHKch6AbQ+HiUXWz3Q2PG2lxxnYUGk5vyd8/Y7j9oK0MCHaKAmRmhIICKAgAigIIQQEO0UBDtIVom0EWBBIVpBtCtF2gtPRM8bIi0K0XaC0W0aICVZiP4oIxp0iB1QzZjbjbQHzm6USo6WYD4+GqIBdrZl/qXUQJeUmaY6OO7Ev8QE850zC1bqJzXZSHOABc3nQcGCFA46Q+Xs6nB7nS2R/OQ8VVa+6SafMmM4hgYsYivY5zqJFxWHO8aSZh3UOwJ3feN7WxSIo7ZQZl8abGBRmRh2XjNesGPKT9hqHYqCDcEecKnk6D2yr6L0f/lUtPxrbw1+07nlnLehWzM2NKkaU8zHsIIA9TOqTB8mvKv8AQfHOISBDAhgRQEyMaEBDAhgRQEojYkCKAgAigJCmwrQRVoJAdIVoVou0KejaPHyJtBaKtBaKo0SEIpVvCkPbeKalh6lRPmRCR3xTNXGteHMauDFDaTJbTO2XuZc4A7gwlp0gq1VQCiQC18zWuQv+kc+2Jr4mpWrYWpVQ65+q1jcBQbhhY34XOutt0cxKuWdTYcENtADe2Y8Tu1sN0a2m0zocU1K8X/Jh8RtHEUzb4pv2vb0JiU2xiib/ABL+VvSXtXo6FRlZznLXz2uGBBBQ8QNYnZnRvO4NyqoBdiMu7lxh7LDU0mR6eOrGizlTfOLnhpbSVuP2jWquzD5Rr/SO08JvMJgEfDuqHqKzBWset1idBe1gCBe19OyYHGYU9ZQfxkHuAGXTxaDOaw6b8UV5LMes48Mx+gtNL0SoFagdWzLY5gL6i3IjXwlfhcIyHOACbG2YEgX3mwlp0eplKgXXKxsRzvJyLZaBlNPWbToriaFLE12eoA9d0WmtmJsFVixIFlBZwBffabi05oNmlcdQoqxYLVDEnW+RnzHu/lrpuFzznTZyedJP0zTHWhAQwILQwIgPQAQwIAIoCCU2ACHaGBDtCB0ICCKAgkwrSDaC0VaFaeiZ5CQrRMVaHF0jRDERGJw4dHQ7nUqfEWjkUsTRq43jOVYoOmIpMxORCq2vpdroT2a/aaJrA5mF0Iyv2WJKt3am57orprswhKjoNHGdf9Lp1j3E5b9uvKRcDi86I/NVPiRJ9tOtNKvf5H63UFhqOB7JV4vEsqHSwY21Ni5OgVeJ7xuljilunUAVuzTXnpKTZ+yqjVVqP1whzEDiwGgHbe3lCVIPGa6nhwlHIANFvfmTqx7yST4zm20aeV2YjQnrW4WvZvU+DGXp6V1WDq1J1FyoJ00H5gRpMu+1AXIIBXXjck8b8pJlpkbWYWdNtNLEdmslYOoqMHYi6/Ko1LNwvb5RzvrymfwdTTKeEsKCkkd4hVXonZt+iyF8bmOuTDrc/wCp2J18CZugJnuh+FCpUqcaj2H9FNQgHmGPjNFORyPaHIK0UBCEUIotgAihCEUJAGGIcEEtIoMQQxBCwohWgIi7QrT0DPJpYN2hERwiJIgUNkRaGICIdoijTLBVoo6FHUMrCxBFxacz+CcNUeg2gRur2o2qkHl+86esxX8RsAciYlfw9Sp/SxGVvA6f7pU+3hr4r8WmRWrdW99Lb+yZ3GdKWAKURa9+txJ4kegjBxzGi9O+pU5TxsdJW7J2C1Rc7OVHADeYyZU+2b3TrEhnEVar6F9511sLcbmVmJwtmOQ3F9CNxmoxWzaCgDO45/zL+QO6UuJwqXsrN3lr+kPSVx4iFhK5VgGmkoVQMvM6j7TOHD5WXW+s0nRmkKmLoK27Ot+69/U2i+X+1sqW0dg2Lh/h0KaWsQoJ721PqZYRuLBnIZpQqHCEAgEFCKESDDBkBYuCFeC8iKFiCEDBC0oaKxJEfKxBE9AeaqMGiIkiOkRJEFopLBoiC0cIgtFUh0MQJB6Q0Q+GqqwuCov3ZhJGPx9Kgues6ovbvPYANT4TP4zpPTxNJ1oq+QkD4jDKGsbnIu8jQam0X4vs1cX6nhybaYeg5Q3yjceYv+0kYXGkLbNZQOc0+1dmpXSzDUA2YbxMBjcNUovlYac+HeI+aVL2bfGo/wAEzamBJNw6m+7xkBaOX8QjbYk298409QncDCwm/cceoc00XR6sUdWB1DAjwOkztCmePhLXB1MpEXaTWBx3rO2U+kWFbLeuiM1uozANe9ra79dJb2nBalTOpBOoOZTyPZ3zW7E/iM6KBiUzplFmp2zg/wCoMQGHboe+YL+M8/T7D+p4v30dOEVKPZvSfCV7ZKyhj+Bzkbusd/heXQEzVDXpocqml6YoRQiRFCDhbDEOACHaX4ghiFFCCX4gjpEbYRZMQxneOFWDZETaKMr9pbXo0FzVXC8l3se5RrJmiG0idIG1NrUsOuao1j+FR8zdw5du6YTbHTauzA0CEQmwuoLd5JuBfsmcxVZmYuzFmO9mJJPj9pc8LfZFT+xaphRjsS1Wsc1hmCX6vAajkLWt2mXWJpZVygW4AcpmdmY00nDj8PzLzRvm8Rr4kTdV6KsoYahgCD2GI55c1+x1/hVL48+6MvnI0kHH0Fcajzl3i8CeEr2w7gHSKTN/ow2NwgRt0jETQ7UUHhrKR6LcAY1VoqpwaBjiPI5vBe0sHR6pXI0HHSFnsLch9JFLa38opToJaQq3rJiP1by42T0gxOHC/CqsFB+QnMndlOnlKOn8sfQ6BfOSoVLGgOujpezf4kAi1ejr+amf+rfrNXsrpRhcQcqVMr2vlcZD4X0PgZxWkRHlfXTWIr4kvr0Eual99O/iHOLYXpbWw5CI7Ej8HzIOwKb+lps+ivTJ69QUcQiozfI63AY/lIJNjy1mWvj1K0dPMq79G3EEKCJwaIeqACSbAakncBzMy2P6b0VYpTVqhF9QQq+BOpHhKzpjtZy7YcXVBYNbUuSAetbcuu7jxmPq2Bz9liRyHGegmfWs8y3VfsXe0+leIqAjNkXkmht2tv8ApM7UIub7/Ex4W3bwZEZTqn4l3dqxiSRalCcU38on8rKfWOg6Dtkaqb0qnYAfEGSqC5lHcJAs9IcqtlKnz7jNh0V2otvhOdPwH/rMc633wUnZTod2sXyQrnGO4eWuOtR1lqCH9JHrbNQ8Jndh9LENkrCx4Pbf3jj3jymnGIR1zIwZeYNxOdUVL9o7PHzRa1MzD7EQudI5U6PoRYCXGUAxZqgC7EADibAeZg6xumB2rsBEOVRrMxtbCCmNd53DjNvt7pHhqd8pDvwtu8/xeHmJggXxNQu+6+k0RFPszcvNKXorchvHaVPQCWH+G6rG3GE1G1rTR4GX6qY2qbhDT537LD0/eShR1BjGAS4LfmZj4XsPpL8QVXrSRh0vHC+QM3Ld37gI5g1sGJ4XkeqpZ1UblYM3f+Effwl4Cq1i8BhSgudXOrH7CS0rFGDZrMCCvYQbgjxiExG/kBqZGRgeu57RBuVmFptvWd22LtAYiilUfiHW7GGjDzgmR/hjjf8AMok3Fg6/Q/UeUE5F8eVh0IvVpX9KK4bEVW0tmy7vyAJ65Zmqp10Hf+/hLLGOSSSZUYq6kPrpo3aPzTvSsRwUtCw+4qDu1U9nDy3QsU1rP+W1/wCk7x4b4hTlJI53Hjw7oquBfMR1XFiOR4HuO7vtLCGqy2d14PTLDlcR7Zzfy1J5SErdalfeC1M+Rt9pL2aD8MeIt3GCgmsRKbURstryi9O6Iv8A6hLKQxWUefKCjiKqG6OwPO5+oIPmYuoe0d8ijTTeZTWlp4Tn6QYu1vi28Df63ldXqVqpu9Rm9T4FiSI5muOMdoqN9vGD4Suhn1W179lbi6KoAq61H0DEkkA7zrLPDU1RbAbltf6mV2GbPWZzuQWXvli3yke/7SSvuXyN4kxCJ1O/W8S6aHuj19LdkQT4dkIWmN418tFm4208ojCqFFIc1P6xrarfyLc3Ueoh4h9KVjvYr5i0B9jpX6f5HvijK27W7HXco0HnIzYkIALXdzmyjfY/L3aWjIrDKxtfO5svEqnVVeVibesaYst1XrVH+Zh9F5ASmw5n8h4jF5Fybze7W3X5QYegzdZzZeA5w8NhQjW+Z+PJY/iawGl7njKz7sPfsjW9BMdkxaG9lysG7sjEetoJnNkVjmuNNDBM1Rr0vWvRf137fSVtdwu/Qbjz1+0n12O65HeJWVm61jvPPc36Gb0c4YqsF0voflPLmCfp3QnxVkKsL92lwdzCMV6dr2F1O8biI1iK4IUDeB3hhyB+0thpaGKgspvuqKT4gi58LeUtcHorLb5XbcdbE3+8pF/y3I4Mp8Ln95aUm67DTUK2mm8WP0EBBUsROzdvnGmI5iLv3+Mbc9o8oQI3Ubukeq2h19I879o8BI7vpx8pCAptcA66/WKqVLKxvw7pHwx3i0GONkO/xlb6CU/qwLYy9QtxY+7yxY6Ae/CRdmramvv+4kot74eHKVK9F37psIn3+vKMuffDwi2Ovb6/vGHb3+0spDG2G/kj+oH19YRa6Ujye/oYjbB/lL3/AH4cpExFT+Sg5nhvtu0i28bHwtlf5ZIwSZgG4AWH1aw5kkx91a3BF7PmP6R3D9VAuXKOAvrbmf3iH1hZiJ5bTIrOQMiaDieJ7zGfg8WYSZk4xg0xvIgNDJol4B7GCM4ZgIIvAtNRV8fDWQsTTuLfaTnGv3BsfGRao8ZqRzitrFiMp+Yag6a2kGqBvAOU7xp6SzroDzB58pBqAgm4B58u+Rhy8ImFGlRd4Kgg9x+ustEcZkJI1S2o5Svwi2ZhzU7u8GSVJyqdeq1pS6D5HrLIH2G/WEznt8xEtbifNREVPD/iZYsRUY24+YkVz2esdqNrw8iIw3h5SmWuxug9m4a+Mdx1raehkYGzftJGJ1H7WgroY17TJmE0Qe/7GOZt/r+4/SM4c9Ue/wC4gZ/f78IYD7Az++H7SNUa/v78Yp398f3jTN7/AFEFsKZG9rnqAcrezG8Ihb4ViOqGOvPhp4xW0m6nl77JM6NYRatagjAMqhmYHUWCn7ssXVJNs08ctykvyOuh5DwP62MadTx9+M379E8O4uC6f0uSPAPcCVuK6F2+Sse51+6EfSAvkS+wv6Wl1hjyLfeR6z3/ALS12jsXEU96BwOKkH0IU/WUr1hezXB5bvQwvOa6ZPp1PaHKTCFCpkE6WPvkdYIBfo2NbXQ6+hkJyRv1XnxHfJlYEEg3B5EaiMOeZ99omlHPSIjEW598j1aYI0tJNROX7H9JEqkeMsmECmcrryNx6HTujraK3YQd/bGMXcEEX0IPlHKh+YcweEoY1uMn0m0B03ada0QzDj/5GIwzjID2cryO1XX9pNA8feDjt3/8o1mPsxTH3aM314eUjDS9BVBY3+8fbUcfrGqmo4eUVTNx+9oK7CrpMfot1fdv2iaje/e+JU+9x/eJqn3b6iE36BS1ic2/36Rtn0veAHf79ZEZtLRbo0TCJG0GvTHf+s0HQVL1nb8tNB/yP/4mbx/+Wvf9prP4fppUbtRf+K3/AO0TzP0x/wAddf7Oh0H0jGJqwZtJW42tbjMZuSIO1K++ZDaVNXvcX7ZdY/ESgqvcxklV0O7G6P1a+ZaNMVGAvlZsoC3te9xBN1/Dil/nP2IvmWJ+ggl1yNMx1mgxBp1Hs1gg97/0i02Nhn1F/Bz97ys2r0XqtVIw7KlIMQCxLDLc2IG86W4iWuzOjzIOtiGYnflVVHk2b6yvNz0zR4RS1yRsX0fpZSELBrdUk5lB7RoSPGZSr0dxLEh6iKBwGbdzsLW8zOmHDAC172lXj6NxY6HgRLXNXWlfQ493DmO0dgui3LhvA/rGqbHKhJO4Df4GaHbhZbq2+2h4EcxMxSfqEcmI+/3mjhtvdM/yeOUlg/Qc5MvIkRo37Y0jasOdjHVMdumXxxtjiP7vA/vURDHuika/9pZWfcWD3xNM2NvqIQ8IbniPSV+5M+w8D73iIrbvZ/tAGvE1N3sQn0VKxjSH373yDVNmtzkpDv8Af9pFxWjAxL6NM9kjH/Kk2/QKlahm/M7nyOX/AKzDYo3pqZv+iAy4emOa3/5En7xPN0P+Ov8App6r6Sjx7mWrtpKXaLzOa5KDFudZWnVvGTsWZCw4u0bIFnU+gFHLhy35qh8lUD6kwSz2Bh/h4aknHIGPe/WP1ggOdZzqr2QsHii41GW3hJG7edZXUdoI46pBHMC/mRFfEA3QMOmWNrxjEUQwsde6MLjCOEafaIvqJRCLtLY1KopVtbduo7pk8V0MK5vh1NDrlYfcfpwm4SsvHid0jnFAseQNvERk1U9AVM16aOYYrY1dGu1Mkbrr1vprIraGxFjyOh8jOqVCrX7vYjRwqVPmCtv3jfbhrGzztdoVXxpfTOYh/doQaxnQm6O4d9cgX+m6/wDjItXohTJ6rOBbmD9RGLnn7in8Wl00Ysnjr6QX92mtPQwcKjW7QD+kbHQ42t8U6f6R+sv60/kF/Hv8GYWG+7s85p16IkG/xD/xt94hui/Nz4KP1l/Wn8g/0170Y9T1jGcYNLzY/wDtJbkl317F/SIqdF0tYu//ANfsID5ZweuCtMi7XpdxnTdhoEpovFUUeQEz9Po0iWPWIDBt43g3A3S/wzhd/jF8lKuh3Fxud0s676GUGPffLDE4jTSUGPq9sUkO6RWYt45sZFZxnNkuMzclv1j4C8g16lzJ2EprkbMbZrL38SPIRq9IRXtnbabqwDKQykaFTcEcLEQTBdAMRU+M1MX+DlJb8qn8JHIk6dvhBBwx1KTwYTEsxsilCetpxvJiJXGpcf0kA+cG29sVmcn4D50uHzI5OUamxtaw3jhM6ekIJ1YgeF/QynL/AAbYtNdo0iYxz89K/aDv8DHqldNCwUW4Ej6TK1ukq2spA7Swv5mUWJ2uNbNfu1J8ZSlsN0kdFXFK24XA3G/0kGpiQrHQic8G36gN1Lj/AH29LRX/AK6x3s4PfeX4MHzk6B/i1vuOo+0OlihwPEzFYfbDcHB7OMlptYgSnLCVJmzp4oDzklcUPffMVS2oTJ1Lat9PfZJ4l+jVJiBfWLFcD1mZXaQhjaOu+VhMNEa4jT1lP1lF/jTprGmxkrCy5asIw1cSlfFG94y+LJl4Xpc1sUtpX1MRqZCetf3wkdmMtIpsnVMWTxldiavGE9TnImIqQkinQhFuZNxKMXp00BLC1lG8s9rDyA85HwCi9zuGp7hqZf8AQ1HfGo4W+VizHgq5SBc8OAEYZ6rE2dF2HsxcNRCfiNjUb8zfoNwgk5mgkw57pt6TcTqpnnzHYZPiMLbifqYIJbJ8H+5kgbOpWvk9T+saOAp/l9T+sOCUdMhVcMg4SvYQ4JEBQyYKddhxMOCEAWFNzbfJNOoecEEEaiWjnnHg55+9IUEAYhxahtv4faB3OmsEEosSznnGydIIJCCS5tvjphQSyEavINXfBBCQFGo6IYNKlVUdbqbXFyL6jiDedXWiqWVFCqOAAA9IIJZh5+wmggglmU//2Q==",
                fit: BoxFit.cover,
                height: 30,
                width: 50,
              ),
            ),
          ),
          SizedBox(width: 20),
          Icon(Icons.qr_code,size: 30,color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.search,size: 30,color: Colors.white,),
          SizedBox(width: 20),
          Icon(Icons.shopping_cart_outlined,size: 30,color: Colors.white,),
          SizedBox(width: 20),

        ],
      ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 10,),
              RichText(
                text: TextSpan(
                  style: TextStyle(),
                  children: const <TextSpan>[
                    TextSpan(text: 'Edit ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 30)),
                    TextSpan(text: 'Your ', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 27)),
                    TextSpan(text: 'Profile', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 25)),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 3,
                color: Colors.black,indent: 50,endIndent: 50,),
              Divider(thickness: 3,
                color: Colors.black,indent: 70,endIndent: 70,),
              Divider(thickness: 3,
                color: Colors.black,indent: 50,endIndent: 50,),
              SizedBox(height: 10,),

              ClipOval(

                child: Image.network("data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFRgVFRUZGRgZGRgcGBkaGBocHBoYGBoaGhoYGBwcIS4lHB4rIRgaJzgmKy8xNTU1GiU7QDs0Py40NTEBDAwMEA8QHxISHjQrJSw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIARMAtwMBIgACEQEDEQH/xAAcAAAABwEBAAAAAAAAAAAAAAAAAQIDBAUGBwj/xAA/EAACAQIDBAgEBAQGAQUAAAABAgADEQQSIQUxQVEGImFxgZGh8BMyscFCUtHhByNy8RQzYoKSwrIVFiSi4v/EABoBAAIDAQEAAAAAAAAAAAAAAAIDAAEEBQb/xAAnEQADAQACAgEDAwUAAAAAAAAAAQIRAzESIQQTQVEiYZEUMnGBwf/aAAwDAQACEQMRAD8A0KiOBYoJDCxDRy5sIJFBIsCLCwdGp6NBIoU46FhhZekaGckFo8ViWAG8279JYtrAARaiVWM2/hqRKu+q2zBeta+nDfu4bpV7R6aIEJw653uQMwIA0uGtbXuuItxT6Q2GzWBYsLMHR6dO/VKLTJ/HYvl03ZLi+vG/nDwv8QHAAqUATxZSQO8Kb9mlxBrgr8GmW/wby0IiZFeniZwGosEP4gwJH+22vGabAbRo1xelUV+YB1HeDqJnqKntD5Y6ViSsesOcLLFMfIyVicsfKwrQWxqGskPJHAsUFgthoaCQ8sdCwwsHS8GcsEfywSaTCvCxWWLCwws7rR5GaEZYpYvLCtFuR00GBBDEzvTHbRw1MKhtUc2HHKttW79wHf2QUteGheyP0r6VDD/y6RVqt+tcEhBbjwzbtJgMXtR67lncljr2f7RuEgsGa7MSSxJJJuSTvJPPUx50CLc7yo8gdfrNcxg6ZSX7iqjAWspFxY8b98bNQm+mm890L4gd7/hFgPE6fWNtjCjlbXAIt3Xv6wsQxDzOTY8BpHg2m/iR9xfvEg4nE33bgQR9/fZGErEX97pWhYT3r5hc6EH39I7gce6MHR2V1Nwymx14HnK531J84SNZoNY+yI3mE6WO1RKiqMyq5qruD2QkBQPxHJpyNhxnQ8HiVqIlRdzqGF9+vA9s4bs2syuCACbqePDu7/Sdo6P4fJhqSa6Jx3+M5nyJmX6NUeyfBaKtBaY2PkSBFgQBYsCC2GggsUFigIdpRYnLBF2gkIQMsGWOWgtPQM8ZLG7QWi7QrRbNEiZx3bOMNXEO5ubu9mvvTMcgA4ALYefOdlCznHT3ZqUCjJbM+hslhZeO/wCbdc8dd0via8h8aZSriCu4DkbiRMRUL2I3cuXMDsj1CgajBbXN/SdD2ZsCkqAMoPE6R134m7jjyOXqjcjw9ImvTJ1O+dip7Go7gi2PZKvanRqm+gFt9rf33Rf1EO+mcu4QlWaut0ZyOVJ04GIOxMsnmifSZnADAg113TQPs9RIuMwNkzAbpPIj48LfoZsJ67q+U5Fa5bhca5Qec64iWAHKch6AbQ+HiUXWz3Q2PG2lxxnYUGk5vyd8/Y7j9oK0MCHaKAmRmhIICKAgAigIIQQEO0UBDtIVom0EWBBIVpBtCtF2gtPRM8bIi0K0XaC0W0aICVZiP4oIxp0iB1QzZjbjbQHzm6USo6WYD4+GqIBdrZl/qXUQJeUmaY6OO7Ev8QE850zC1bqJzXZSHOABc3nQcGCFA46Q+Xs6nB7nS2R/OQ8VVa+6SafMmM4hgYsYivY5zqJFxWHO8aSZh3UOwJ3feN7WxSIo7ZQZl8abGBRmRh2XjNesGPKT9hqHYqCDcEecKnk6D2yr6L0f/lUtPxrbw1+07nlnLehWzM2NKkaU8zHsIIA9TOqTB8mvKv8AQfHOISBDAhgRQEyMaEBDAhgRQEojYkCKAgAigJCmwrQRVoJAdIVoVou0KejaPHyJtBaKtBaKo0SEIpVvCkPbeKalh6lRPmRCR3xTNXGteHMauDFDaTJbTO2XuZc4A7gwlp0gq1VQCiQC18zWuQv+kc+2Jr4mpWrYWpVQ65+q1jcBQbhhY34XOutt0cxKuWdTYcENtADe2Y8Tu1sN0a2m0zocU1K8X/Jh8RtHEUzb4pv2vb0JiU2xiib/ABL+VvSXtXo6FRlZznLXz2uGBBBQ8QNYnZnRvO4NyqoBdiMu7lxh7LDU0mR6eOrGizlTfOLnhpbSVuP2jWquzD5Rr/SO08JvMJgEfDuqHqKzBWset1idBe1gCBe19OyYHGYU9ZQfxkHuAGXTxaDOaw6b8UV5LMes48Mx+gtNL0SoFagdWzLY5gL6i3IjXwlfhcIyHOACbG2YEgX3mwlp0eplKgXXKxsRzvJyLZaBlNPWbToriaFLE12eoA9d0WmtmJsFVixIFlBZwBffabi05oNmlcdQoqxYLVDEnW+RnzHu/lrpuFzznTZyedJP0zTHWhAQwILQwIgPQAQwIAIoCCU2ACHaGBDtCB0ICCKAgkwrSDaC0VaFaeiZ5CQrRMVaHF0jRDERGJw4dHQ7nUqfEWjkUsTRq43jOVYoOmIpMxORCq2vpdroT2a/aaJrA5mF0Iyv2WJKt3am57orprswhKjoNHGdf9Lp1j3E5b9uvKRcDi86I/NVPiRJ9tOtNKvf5H63UFhqOB7JV4vEsqHSwY21Ni5OgVeJ7xuljilunUAVuzTXnpKTZ+yqjVVqP1whzEDiwGgHbe3lCVIPGa6nhwlHIANFvfmTqx7yST4zm20aeV2YjQnrW4WvZvU+DGXp6V1WDq1J1FyoJ00H5gRpMu+1AXIIBXXjck8b8pJlpkbWYWdNtNLEdmslYOoqMHYi6/Ko1LNwvb5RzvrymfwdTTKeEsKCkkd4hVXonZt+iyF8bmOuTDrc/wCp2J18CZugJnuh+FCpUqcaj2H9FNQgHmGPjNFORyPaHIK0UBCEUIotgAihCEUJAGGIcEEtIoMQQxBCwohWgIi7QrT0DPJpYN2hERwiJIgUNkRaGICIdoijTLBVoo6FHUMrCxBFxacz+CcNUeg2gRur2o2qkHl+86esxX8RsAciYlfw9Sp/SxGVvA6f7pU+3hr4r8WmRWrdW99Lb+yZ3GdKWAKURa9+txJ4kegjBxzGi9O+pU5TxsdJW7J2C1Rc7OVHADeYyZU+2b3TrEhnEVar6F9511sLcbmVmJwtmOQ3F9CNxmoxWzaCgDO45/zL+QO6UuJwqXsrN3lr+kPSVx4iFhK5VgGmkoVQMvM6j7TOHD5WXW+s0nRmkKmLoK27Ot+69/U2i+X+1sqW0dg2Lh/h0KaWsQoJ721PqZYRuLBnIZpQqHCEAgEFCKESDDBkBYuCFeC8iKFiCEDBC0oaKxJEfKxBE9AeaqMGiIkiOkRJEFopLBoiC0cIgtFUh0MQJB6Q0Q+GqqwuCov3ZhJGPx9Kgues6ovbvPYANT4TP4zpPTxNJ1oq+QkD4jDKGsbnIu8jQam0X4vs1cX6nhybaYeg5Q3yjceYv+0kYXGkLbNZQOc0+1dmpXSzDUA2YbxMBjcNUovlYac+HeI+aVL2bfGo/wAEzamBJNw6m+7xkBaOX8QjbYk298409QncDCwm/cceoc00XR6sUdWB1DAjwOkztCmePhLXB1MpEXaTWBx3rO2U+kWFbLeuiM1uozANe9ra79dJb2nBalTOpBOoOZTyPZ3zW7E/iM6KBiUzplFmp2zg/wCoMQGHboe+YL+M8/T7D+p4v30dOEVKPZvSfCV7ZKyhj+Bzkbusd/heXQEzVDXpocqml6YoRQiRFCDhbDEOACHaX4ghiFFCCX4gjpEbYRZMQxneOFWDZETaKMr9pbXo0FzVXC8l3se5RrJmiG0idIG1NrUsOuao1j+FR8zdw5du6YTbHTauzA0CEQmwuoLd5JuBfsmcxVZmYuzFmO9mJJPj9pc8LfZFT+xaphRjsS1Wsc1hmCX6vAajkLWt2mXWJpZVygW4AcpmdmY00nDj8PzLzRvm8Rr4kTdV6KsoYahgCD2GI55c1+x1/hVL48+6MvnI0kHH0Fcajzl3i8CeEr2w7gHSKTN/ow2NwgRt0jETQ7UUHhrKR6LcAY1VoqpwaBjiPI5vBe0sHR6pXI0HHSFnsLch9JFLa38opToJaQq3rJiP1by42T0gxOHC/CqsFB+QnMndlOnlKOn8sfQ6BfOSoVLGgOujpezf4kAi1ejr+amf+rfrNXsrpRhcQcqVMr2vlcZD4X0PgZxWkRHlfXTWIr4kvr0Eual99O/iHOLYXpbWw5CI7Ej8HzIOwKb+lps+ivTJ69QUcQiozfI63AY/lIJNjy1mWvj1K0dPMq79G3EEKCJwaIeqACSbAakncBzMy2P6b0VYpTVqhF9QQq+BOpHhKzpjtZy7YcXVBYNbUuSAetbcuu7jxmPq2Bz9liRyHGegmfWs8y3VfsXe0+leIqAjNkXkmht2tv8ApM7UIub7/Ex4W3bwZEZTqn4l3dqxiSRalCcU38on8rKfWOg6Dtkaqb0qnYAfEGSqC5lHcJAs9IcqtlKnz7jNh0V2otvhOdPwH/rMc633wUnZTod2sXyQrnGO4eWuOtR1lqCH9JHrbNQ8Jndh9LENkrCx4Pbf3jj3jymnGIR1zIwZeYNxOdUVL9o7PHzRa1MzD7EQudI5U6PoRYCXGUAxZqgC7EADibAeZg6xumB2rsBEOVRrMxtbCCmNd53DjNvt7pHhqd8pDvwtu8/xeHmJggXxNQu+6+k0RFPszcvNKXorchvHaVPQCWH+G6rG3GE1G1rTR4GX6qY2qbhDT537LD0/eShR1BjGAS4LfmZj4XsPpL8QVXrSRh0vHC+QM3Ld37gI5g1sGJ4XkeqpZ1UblYM3f+Effwl4Cq1i8BhSgudXOrH7CS0rFGDZrMCCvYQbgjxiExG/kBqZGRgeu57RBuVmFptvWd22LtAYiilUfiHW7GGjDzgmR/hjjf8AMok3Fg6/Q/UeUE5F8eVh0IvVpX9KK4bEVW0tmy7vyAJ65Zmqp10Hf+/hLLGOSSSZUYq6kPrpo3aPzTvSsRwUtCw+4qDu1U9nDy3QsU1rP+W1/wCk7x4b4hTlJI53Hjw7oquBfMR1XFiOR4HuO7vtLCGqy2d14PTLDlcR7Zzfy1J5SErdalfeC1M+Rt9pL2aD8MeIt3GCgmsRKbURstryi9O6Iv8A6hLKQxWUefKCjiKqG6OwPO5+oIPmYuoe0d8ijTTeZTWlp4Tn6QYu1vi28Df63ldXqVqpu9Rm9T4FiSI5muOMdoqN9vGD4Suhn1W179lbi6KoAq61H0DEkkA7zrLPDU1RbAbltf6mV2GbPWZzuQWXvli3yke/7SSvuXyN4kxCJ1O/W8S6aHuj19LdkQT4dkIWmN418tFm4208ojCqFFIc1P6xrarfyLc3Ueoh4h9KVjvYr5i0B9jpX6f5HvijK27W7HXco0HnIzYkIALXdzmyjfY/L3aWjIrDKxtfO5svEqnVVeVibesaYst1XrVH+Zh9F5ASmw5n8h4jF5Fybze7W3X5QYegzdZzZeA5w8NhQjW+Z+PJY/iawGl7njKz7sPfsjW9BMdkxaG9lysG7sjEetoJnNkVjmuNNDBM1Rr0vWvRf137fSVtdwu/Qbjz1+0n12O65HeJWVm61jvPPc36Gb0c4YqsF0voflPLmCfp3QnxVkKsL92lwdzCMV6dr2F1O8biI1iK4IUDeB3hhyB+0thpaGKgspvuqKT4gi58LeUtcHorLb5XbcdbE3+8pF/y3I4Mp8Ln95aUm67DTUK2mm8WP0EBBUsROzdvnGmI5iLv3+Mbc9o8oQI3Ubukeq2h19I879o8BI7vpx8pCAptcA66/WKqVLKxvw7pHwx3i0GONkO/xlb6CU/qwLYy9QtxY+7yxY6Ae/CRdmramvv+4kot74eHKVK9F37psIn3+vKMuffDwi2Ovb6/vGHb3+0spDG2G/kj+oH19YRa6Ujye/oYjbB/lL3/AH4cpExFT+Sg5nhvtu0i28bHwtlf5ZIwSZgG4AWH1aw5kkx91a3BF7PmP6R3D9VAuXKOAvrbmf3iH1hZiJ5bTIrOQMiaDieJ7zGfg8WYSZk4xg0xvIgNDJol4B7GCM4ZgIIvAtNRV8fDWQsTTuLfaTnGv3BsfGRao8ZqRzitrFiMp+Yag6a2kGqBvAOU7xp6SzroDzB58pBqAgm4B58u+Rhy8ImFGlRd4Kgg9x+ustEcZkJI1S2o5Svwi2ZhzU7u8GSVJyqdeq1pS6D5HrLIH2G/WEznt8xEtbifNREVPD/iZYsRUY24+YkVz2esdqNrw8iIw3h5SmWuxug9m4a+Mdx1raehkYGzftJGJ1H7WgroY17TJmE0Qe/7GOZt/r+4/SM4c9Ue/wC4gZ/f78IYD7Az++H7SNUa/v78Yp398f3jTN7/AFEFsKZG9rnqAcrezG8Ihb4ViOqGOvPhp4xW0m6nl77JM6NYRatagjAMqhmYHUWCn7ssXVJNs08ctykvyOuh5DwP62MadTx9+M379E8O4uC6f0uSPAPcCVuK6F2+Sse51+6EfSAvkS+wv6Wl1hjyLfeR6z3/ALS12jsXEU96BwOKkH0IU/WUr1hezXB5bvQwvOa6ZPp1PaHKTCFCpkE6WPvkdYIBfo2NbXQ6+hkJyRv1XnxHfJlYEEg3B5EaiMOeZ99omlHPSIjEW598j1aYI0tJNROX7H9JEqkeMsmECmcrryNx6HTujraK3YQd/bGMXcEEX0IPlHKh+YcweEoY1uMn0m0B03ada0QzDj/5GIwzjID2cryO1XX9pNA8feDjt3/8o1mPsxTH3aM314eUjDS9BVBY3+8fbUcfrGqmo4eUVTNx+9oK7CrpMfot1fdv2iaje/e+JU+9x/eJqn3b6iE36BS1ic2/36Rtn0veAHf79ZEZtLRbo0TCJG0GvTHf+s0HQVL1nb8tNB/yP/4mbx/+Wvf9prP4fppUbtRf+K3/AO0TzP0x/wAddf7Oh0H0jGJqwZtJW42tbjMZuSIO1K++ZDaVNXvcX7ZdY/ESgqvcxklV0O7G6P1a+ZaNMVGAvlZsoC3te9xBN1/Dil/nP2IvmWJ+ggl1yNMx1mgxBp1Hs1gg97/0i02Nhn1F/Bz97ys2r0XqtVIw7KlIMQCxLDLc2IG86W4iWuzOjzIOtiGYnflVVHk2b6yvNz0zR4RS1yRsX0fpZSELBrdUk5lB7RoSPGZSr0dxLEh6iKBwGbdzsLW8zOmHDAC172lXj6NxY6HgRLXNXWlfQ493DmO0dgui3LhvA/rGqbHKhJO4Df4GaHbhZbq2+2h4EcxMxSfqEcmI+/3mjhtvdM/yeOUlg/Qc5MvIkRo37Y0jasOdjHVMdumXxxtjiP7vA/vURDHuika/9pZWfcWD3xNM2NvqIQ8IbniPSV+5M+w8D73iIrbvZ/tAGvE1N3sQn0VKxjSH373yDVNmtzkpDv8Af9pFxWjAxL6NM9kjH/Kk2/QKlahm/M7nyOX/AKzDYo3pqZv+iAy4emOa3/5En7xPN0P+Ov8App6r6Sjx7mWrtpKXaLzOa5KDFudZWnVvGTsWZCw4u0bIFnU+gFHLhy35qh8lUD6kwSz2Bh/h4aknHIGPe/WP1ggOdZzqr2QsHii41GW3hJG7edZXUdoI46pBHMC/mRFfEA3QMOmWNrxjEUQwsde6MLjCOEafaIvqJRCLtLY1KopVtbduo7pk8V0MK5vh1NDrlYfcfpwm4SsvHid0jnFAseQNvERk1U9AVM16aOYYrY1dGu1Mkbrr1vprIraGxFjyOh8jOqVCrX7vYjRwqVPmCtv3jfbhrGzztdoVXxpfTOYh/doQaxnQm6O4d9cgX+m6/wDjItXohTJ6rOBbmD9RGLnn7in8Wl00Ysnjr6QX92mtPQwcKjW7QD+kbHQ42t8U6f6R+sv60/kF/Hv8GYWG+7s85p16IkG/xD/xt94hui/Nz4KP1l/Wn8g/0170Y9T1jGcYNLzY/wDtJbkl317F/SIqdF0tYu//ANfsID5ZweuCtMi7XpdxnTdhoEpovFUUeQEz9Po0iWPWIDBt43g3A3S/wzhd/jF8lKuh3Fxud0s676GUGPffLDE4jTSUGPq9sUkO6RWYt45sZFZxnNkuMzclv1j4C8g16lzJ2EprkbMbZrL38SPIRq9IRXtnbabqwDKQykaFTcEcLEQTBdAMRU+M1MX+DlJb8qn8JHIk6dvhBBwx1KTwYTEsxsilCetpxvJiJXGpcf0kA+cG29sVmcn4D50uHzI5OUamxtaw3jhM6ekIJ1YgeF/QynL/AAbYtNdo0iYxz89K/aDv8DHqldNCwUW4Ej6TK1ukq2spA7Swv5mUWJ2uNbNfu1J8ZSlsN0kdFXFK24XA3G/0kGpiQrHQic8G36gN1Lj/AH29LRX/AK6x3s4PfeX4MHzk6B/i1vuOo+0OlihwPEzFYfbDcHB7OMlptYgSnLCVJmzp4oDzklcUPffMVS2oTJ1Lat9PfZJ4l+jVJiBfWLFcD1mZXaQhjaOu+VhMNEa4jT1lP1lF/jTprGmxkrCy5asIw1cSlfFG94y+LJl4Xpc1sUtpX1MRqZCetf3wkdmMtIpsnVMWTxldiavGE9TnImIqQkinQhFuZNxKMXp00BLC1lG8s9rDyA85HwCi9zuGp7hqZf8AQ1HfGo4W+VizHgq5SBc8OAEYZ6rE2dF2HsxcNRCfiNjUb8zfoNwgk5mgkw57pt6TcTqpnnzHYZPiMLbifqYIJbJ8H+5kgbOpWvk9T+saOAp/l9T+sOCUdMhVcMg4SvYQ4JEBQyYKddhxMOCEAWFNzbfJNOoecEEEaiWjnnHg55+9IUEAYhxahtv4faB3OmsEEosSznnGydIIJCCS5tvjphQSyEavINXfBBCQFGo6IYNKlVUdbqbXFyL6jiDedXWiqWVFCqOAAA9IIJZh5+wmggglmU//2Q==",
                  fit: BoxFit.fill,


                  height: 120,
                  width: 110,
                ),
              ),
              SizedBox(height: 10,),

              Container(
                margin: EdgeInsets.only(
                    top: 5,left: 10,right: 20,bottom: 5
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                    hintText: "Enter your user name",
                    labelText: "User Name",
                    icon: Icon(Icons.perm_identity,color: Colors.blue,size: 30,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5,left: 10,right: 20,bottom: 5
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                    hintText: "Enter your phone number",
                    labelText: "Phone Number",
                    icon: Icon(Icons.phone,color: Colors.blue,size: 30,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5,left: 10,right: 20,bottom: 5
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                    hintText: "Enter your email",
                    labelText: "Email(@)",
                    icon: Icon(Icons.email_outlined,color: Colors.blue,size: 30,),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 5,left: 10,right: 20,bottom: 5
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(17))),
                    hintText: "Enter your date of birth",
                    labelText: "Date of Birth",
                    icon: Icon(Icons.calendar_month_sharp,color: Colors.blue,size: 30,),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Padding(
                padding: const EdgeInsets.all(20),
                child: ElevatedButton(

                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                    }, child: Text("Save Your Profile",style: TextStyle(fontWeight: FontWeight.bold),)),
              )
            ],
          ),
        ),
body: lists[select],
bottomNavigationBar:  BottomNavigationBar(
onTap: (value){
  setState(() {
    select=value;
  });
},
  elevation: 30,
    backgroundColor: Colors.blueGrey,
    selectedFontSize: 30,
unselectedFontSize: 18,
selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black87,
iconSize: 20,
    currentIndex: select,
    items: [
   BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 35),label: "Home",    ),
      BottomNavigationBarItem(icon: Icon(Icons.search,size: 35),label: "Search",  ),
      BottomNavigationBarItem(icon: Icon(Icons.perm_contact_cal,size: 35),label: "Profile",  ),
])
    );
  }
}
