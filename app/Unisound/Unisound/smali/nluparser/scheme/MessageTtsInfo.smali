.class public Lnluparser/scheme/MessageTtsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
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
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "msgContentType"    # I
    .param p3, "msgId"    # Ljava/lang/String;
    .param p4, "msgFromContactsId"    # Ljava/lang/String;
    .param p5, "msgFromGroupMemberId"    # Ljava/lang/String;
    .param p6, "msgFromName"    # Ljava/lang/String;
    .param p7, "time"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    iput p2, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    iput-object p3, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    iput-object p4, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    iput-object p6, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    iput-object p5, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    iput-wide p7, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    check-cast p1, Lnluparser/scheme/MessageTtsInfo;

    invoke-virtual {p0, p1}, Lnluparser/scheme/MessageTtsInfo;->compareTo(Lnluparser/scheme/MessageTtsInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnluparser/scheme/MessageTtsInfo;)I
    .locals 4
    .param p1, "another"    # Lnluparser/scheme/MessageTtsInfo;

    .prologue
    invoke-virtual {p0}, Lnluparser/scheme/MessageTtsInfo;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lnluparser/scheme/MessageTtsInfo;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getGroupMemberId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContentType()I
    .locals 1

    iget v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    return v0
.end method

.method public getMsgFromContactsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgFromName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-wide v0
.end method

.method public isNaviMessage()Z
    .locals 2

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    const-string v1, "type=location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupMemberId(Ljava/lang/String;)V
    .locals 0
    .param p1, "groupMemberId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->groupMemberId:Ljava/lang/String;

    return-void
.end method

.method public setMsgContentType(I)V
    .locals 0
    .param p1, "msgContentType"    # I

    .prologue
    iput p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgContentType:I

    return-void
.end method

.method public setMsgFromContactsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgFromContactsId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromContactsId:Ljava/lang/String;

    return-void
.end method

.method public setMsgFromName(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgFromName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgFromName:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MessageTtsInfo;->text:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lnluparser/scheme/MessageTtsInfo;->time:J

    return-void
.end method
