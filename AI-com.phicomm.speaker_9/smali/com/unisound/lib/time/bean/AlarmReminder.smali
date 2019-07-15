.class public Lcom/unisound/lib/time/bean/AlarmReminder;
.super Ljava/lang/Object;
.source "AlarmReminder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final MEMO_STATUS_CANCEL:Ljava/lang/String; = "cancel"

.field public static final MEMO_STATUS_FINISH:Ljava/lang/String; = "finished"

.field public static final MEMO_STATUS_RUNNING:Ljava/lang/String; = "running"

.field public static final MEMO_STATUS_START:Ljava/lang/String; = "start"

.field public static final MEMO_TYPE_ALARM:Ljava/lang/String; = "alarm"

.field public static final MEMO_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final MEMO_TYPE_COUNTDOWN:Ljava/lang/String; = "countDown"

.field public static final MEMO_TYPE_REMINDER:Ljava/lang/String; = "reminder"


# instance fields
.field private alarmId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private alarmName:Ljava/lang/String;

.field private countDownTime:I

.field private date:Ljava/lang/String;

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "myId"
    .end annotation
.end field

.field private isOpen:Z

.field private label:Ljava/lang/String;

.field private repeatDate:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private timeStamp:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private yearDate:I

.field private yearMonth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->isOpen:Z

    .line 158
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlarmId()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountDownTime()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->countDownTime:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 120
    iget-wide v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->id:J

    return-wide v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatDate()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->repeatDate:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getYearDate()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->yearDate:I

    return v0
.end method

.method public getYearMonth()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->yearMonth:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->isOpen:Z

    return v0
.end method

.method public setAlarmId(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmId:Ljava/lang/String;

    return-void
.end method

.method public setAlarmName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmName:Ljava/lang/String;

    return-void
.end method

.method public setCountDownTime(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->countDownTime:I

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->id:J

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->label:Ljava/lang/String;

    return-void
.end method

.method public setOpen(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->isOpen:Z

    return-void
.end method

.method public setRepeatDate(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->repeatDate:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->status:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->time:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->timeStamp:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->type:Ljava/lang/String;

    return-void
.end method

.method public setYearDate(I)V
    .locals 0

    .line 138
    iput p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->yearDate:I

    return-void
.end method

.method public setYearMonth(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->yearMonth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmReminder{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", alarmId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->alarmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOpen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->isOpen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", status=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->status:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", date=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", time=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", repeatDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->repeatDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", label=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/lib/time/bean/AlarmReminder;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
