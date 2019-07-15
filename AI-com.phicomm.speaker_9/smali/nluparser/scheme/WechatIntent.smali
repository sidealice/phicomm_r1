.class public Lnluparser/scheme/WechatIntent;
.super Ljava/lang/Object;
.source "WechatIntent.java"

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field name:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "name"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field ttsInfo:Lnluparser/scheme/MessageTtsInfo;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ttsInfo"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ttsInfo"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lnluparser/scheme/WechatIntent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lnluparser/scheme/WechatIntent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTtsInfo()Lnluparser/scheme/MessageTtsInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lnluparser/scheme/WechatIntent;->ttsInfo:Lnluparser/scheme/MessageTtsInfo;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lnluparser/scheme/WechatIntent;->content:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lnluparser/scheme/WechatIntent;->name:Ljava/lang/String;

    return-void
.end method

.method public setTtsInfo(Lnluparser/scheme/MessageTtsInfo;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnluparser/scheme/WechatIntent;->ttsInfo:Lnluparser/scheme/MessageTtsInfo;

    return-void
.end method
