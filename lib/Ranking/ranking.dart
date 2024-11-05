import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('순위'),
          bottom: TabBar(
            tabs: [
              Tab(text: '팀'),
              Tab(text: '선수'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TeamRankingView(),
            PlayerRankingView(),
          ],
        ),
      ),
    );
  }
}

// 팀 순위 뷰
class TeamRankingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 동적인 상단 부분
        TeamTopRanking(),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TeamRankingTable(),
            ),
          ),
        ),
      ],
    );
  }
}

// 팀 순위 상단 부분 (1위, 2위, 3위)
class TeamTopRanking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Icon(Icons.star, size: 40),
              Text('2위'),
              Text('맨시티'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.star, size: 50),
              Text('1위'),
              Text('리버풀'),
            ],
          ),
          Column(
            children: [
              Icon(Icons.star, size: 40),
              Text('3위'),
              Text('노팅엄'),
            ],
          ),
        ],
      ),
    );
  }
}

// 선수 순위 뷰
class PlayerRankingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 동적인 상단 부분
        PlayerTopStats(),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: PlayerRankingTable(),
            ),
          ),
        ),
      ],
    );
  }
}

// 선수 순위 상단 부분 (득점, 도움, 출장수)
class PlayerTopStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/haaland.jpg'), // 득점 1위 이미지
              ),
              SizedBox(height: 5),
              Text('득점'),
              Text('홀란'),
              Text('11골'),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/saka.jpg'), // 도움 1위 이미지
              ),
              SizedBox(height: 5),
              Text('도움'),
              Text('사카'),
              Text('7도움'),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 20,
                child: Text('10', style: TextStyle(fontSize: 14)), // 출장 수
              ),
              SizedBox(height: 5),
              Text('출장수'),
              Text('한스'),
              Text('10경기'),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamRankingTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 16, // 가로 간격 줄임
      columns: [
        DataColumn(label: Text('순위')),
        DataColumn(label: Text('팀')),
        DataColumn(label: Text('경기')),
        DataColumn(label: Text('승')),
        DataColumn(label: Text('무')),
        DataColumn(label: Text('패')),
        DataColumn(label: Text('득점')),
        DataColumn(label: Text('실점')),
        DataColumn(label: Text('승점')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(Text('리버풀')),
          DataCell(Text('10')),
          DataCell(Text('8')),
          DataCell(Text('1')),
          DataCell(Text('1')),
          DataCell(Text('19')),
          DataCell(Text('6')),
          DataCell(Text('25')),
        ]),
        DataRow(cells: [
          DataCell(Text('2')),
          DataCell(Text('맨시티')),
          DataCell(Text('10')),
          DataCell(Text('7')),
          DataCell(Text('2')),
          DataCell(Text('1')),
          DataCell(Text('21')),
          DataCell(Text('11')),
          DataCell(Text('23')),
        ]),
        DataRow(cells: [
          DataCell(Text('3')),
          DataCell(Text('노팅엄')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('4')),
          DataCell(Text('1')),
          DataCell(Text('14')),
          DataCell(Text('7')),
          DataCell(Text('19')),
        ]),
        DataRow(cells: [
          DataCell(Text('4')),
          DataCell(Text('첼시')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('3')),
          DataCell(Text('2')),
          DataCell(Text('20')),
          DataCell(Text('12')),
          DataCell(Text('18')),
        ]),
        DataRow(cells: [
          DataCell(Text('5')),
          DataCell(Text('아스날')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('3')),
          DataCell(Text('2')),
          DataCell(Text('17')),
          DataCell(Text('11')),
          DataCell(Text('18')),
        ]),
        DataRow(cells: [
          DataCell(Text('6')),
          DataCell(Text('애스턴 빌라')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('3')),
          DataCell(Text('2')),
          DataCell(Text('17')),
          DataCell(Text('15')),
          DataCell(Text('18')),
        ]),
        DataRow(cells: [
          DataCell(Text('7')),
          DataCell(Text('브라이튼')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('1')),
          DataCell(Text('4')),
          DataCell(Text('22')),
          DataCell(Text('11')),
          DataCell(Text('16')),
        ]),
        DataRow(cells: [
          DataCell(Text('8')),
          DataCell(Text('풀럼')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('3')),
          DataCell(Text('3')),
          DataCell(Text('14')),
          DataCell(Text('13')),
          DataCell(Text('15')),
        ]),
        DataRow(cells: [
          DataCell(Text('9')),
          DataCell(Text('토트넘')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('3')),
          DataCell(Text('3')),
          DataCell(Text('13')),
          DataCell(Text('12')),
          DataCell(Text('15')),
        ]),
        DataRow(cells: [
          DataCell(Text('10')),
          DataCell(Text('뉴캐슬')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('3')),
          DataCell(Text('3')),
          DataCell(Text('13')),
          DataCell(Text('12')),
          DataCell(Text('15')),
        ]),
      ],
    );
  }
}

class PlayerRankingTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataTable(
      columnSpacing: 16, // 가로 간격 줄임
      columns: [
        DataColumn(label: Text('순위')),
        DataColumn(label: Text('선수')),
        DataColumn(label: Text('팀')),
        DataColumn(label: Text('경기')),
        DataColumn(label: Text('득점')),
        DataColumn(label: Text('도움')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(Text('홀란')),
          DataCell(Text('맨시티')),
          DataCell(Text('10')),
          DataCell(Text('11')),
          DataCell(Text('3')),
        ]),
        DataRow(cells: [
          DataCell(Text('2')),
          DataCell(Text('우도')),
          DataCell(Text('노팅엄')),
          DataCell(Text('10')),
          DataCell(Text('8')),
          DataCell(Text('2')),
        ]),
        DataRow(cells: [
          DataCell(Text('3')),
          DataCell(Text('응와모니')),
          DataCell(Text('브렌트포드')),
          DataCell(Text('10')),
          DataCell(Text('7')),
          DataCell(Text('1')),
        ]),
        DataRow(cells: [
          DataCell(Text('4')),
          DataCell(Text('펠릭스')),
          DataCell(Text('첼시')),
          DataCell(Text('10')),
          DataCell(Text('6')),
          DataCell(Text('2')),
        ]),
        DataRow(cells: [
          DataCell(Text('5')),
          DataCell(Text('사카')),
          DataCell(Text('아스날')),
          DataCell(Text('10')),
          DataCell(Text('6')),
          DataCell(Text('3')),
        ]),
        DataRow(cells: [
          DataCell(Text('6')),
          DataCell(Text('매디슨')),
          DataCell(Text('토트넘')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('5')),
        ]),
        DataRow(cells: [
          DataCell(Text('7')),
          DataCell(Text('살라')),
          DataCell(Text('리버풀')),
          DataCell(Text('10')),
          DataCell(Text('5')),
          DataCell(Text('4')),
        ]),
        DataRow(cells: [
          DataCell(Text('8')),
          DataCell(Text('은케티아')),
          DataCell(Text('아스날')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('2')),
        ]),
        DataRow(cells: [
          DataCell(Text('9')),
          DataCell(Text('솔랑케')),
          DataCell(Text('본머스')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('3')),
        ]),
        DataRow(cells: [
          DataCell(Text('10')),
          DataCell(Text('오태연')),
          DataCell(Text('레알마드리드')),
          DataCell(Text('10')),
          DataCell(Text('4')),
          DataCell(Text('1')),
        ]),
      ],
    );
  }
}
