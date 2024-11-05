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
            TeamRankingTable(),
            PlayerRankingTable(),
          ],
        ),
      ),
    );
  }
}

class TeamRankingTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
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
          // 필요에 따라 추가 데이터 입력
        ],
      ),
    );
  }
}

class PlayerRankingTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
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
          // 필요에 따라 추가 데이터 입력
        ],
      ),
    );
  }
}
