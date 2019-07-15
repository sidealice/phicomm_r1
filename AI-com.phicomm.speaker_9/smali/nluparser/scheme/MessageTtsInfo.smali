.class public Lnluparser/scheme/MessageTtsInfo;
.super Ljava/lang/Object;
.source "MessageTtsInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnluparser/scheme/MessageTtsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private groupMemberId:Ljava/lang/String;

.field private msgContentType:I

.field private msgFromContactsId:Ljava/lang/String;

.field private msgFromName:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    .line 80
    iput p2, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    .line 81
    iput-object p3, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    .line 85
    iput-wide p7, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lnluparser/scheme/MessageTtsInfo;

    invoke-virtual {p0, p1}, Lnluparser/scheme/MessageTtsInfo;->compareTo(Lnluparser/scheme/MessageTtsInfo;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lnluparser/scheme/MessageTtsInfo;)I
    .locals 6

    .line 96
    invoke-virtual {p0}, Lnluparser/scheme/MessageTtsInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnluparser/scheme/MessageTtsInfo;->getTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    long-to-int p1, v4

    return p1
.end method

.method public getGroupMemberId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContentType()I
    .locals 1

    .line 46
    iget v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    return v0
.end method

.method public getMsgFromContactsId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgFromName()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 22
    iget-wide v0, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-wide v0
.end method

.method public isNaviMessage()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    const-string v1, "type=location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setGroupMemberId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    return-void
.end method

.method public setMsgContentType(I)V
    .locals 0

    .line 50
    iput p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    return-void
.end method

.method public setMsgFromContactsId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    return-void
.end method

.method public setMsgFromName(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-void
.end method
