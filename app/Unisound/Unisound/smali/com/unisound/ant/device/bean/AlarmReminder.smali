.class public Lcom/unisound/ant/device/bean/AlarmReminder;
.super Ljava/lang/Object;
.source "AlarmReminder.java"


# static fields
.field public static final MEMO_STATUS_CANCEL:Ljava/lang/String; = "cancel"

.field public static final MEMO_STATUS_FINISH:Ljava/lang/String; = "finished"

.field public static final MEMO_STATUS_RUNNING:Ljava/lang/String; = "running"

.field public static final MEMO_STATUS_START:Ljava/lang/String; = "start"


# instance fields
.field private countDown:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "countDownTime"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countDownTime"
    .end annotation
.end field

.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isOpen:Z

.field private label:Ljava/lang/String;

.field private repeatDate:Ljava/lang/String;

.field private ringing:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "alarmName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alarmName"
    .end annotation
.end field

.field private status:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountDown()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->countDown:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->repeatDate:Ljava/lang/String;

    return-object v0
.end method

.method public getRinging()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->ringing:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->isOpen:Z

    return v0
.end method

.method public setCountDown(I)V
    .locals 0
    .param p1, "countDown"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->countDown:I

    .line 109
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->date:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->label:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->isOpen:Z

    .line 45
    return-void
.end method

.method public setRepeatDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "repeatDate"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->repeatDate:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 0
    .param p1, "ringing"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->ringing:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->status:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->time:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/unisound/ant/device/bean/AlarmReminder;->type:Ljava/lang/String;

    .line 61
    return-void
.end method
