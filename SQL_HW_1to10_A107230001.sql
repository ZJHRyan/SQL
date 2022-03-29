select a.*,d.Cname,b.score from Student a,sc b,sc c ,Course d where a.SId=b.SId and b.CId = d.CId and b.CId='01' and c.CId='02' and b.score>c.score

select a.*,b.CId,b.score from SC a,SC b where a.SId=b.SId and a.CId='01' and b.CId='02'

select a.*,b.CId from SC a left join SC b on a.SId=b.SId and a.CId='01' and b.CId = '02' where a.CId='01'

select a.sid,b.sname,avg(score) avgScore from Sc a, student b where a.sid=b.sid group by a.Sid,b.sname having avg(score)>=60

select * from Student where sid in (select distinct sid from SC)

select a.sid,a.sname,count(b.cid),sum(c.score) from student a left join sc c on a.sid=c.sid left join Course b on b.cid=c.cid group by a.sid,a.sname order by a.sid

select * from Student a where exists (select sid from SC b where a.sid=b.sid)

select count(1) from Teacher where Tname like '李%'

select d.* from Teacher a join Course b on a.Tid=b.Tid join sc c on b.cid=c.cid join student d on c.sid=d.sid where a.tname='张三'