.class public Lnluparser/scheme/SMSIntent;
.super Lnluparser/scheme/CallIntent;


# instance fields
.field content:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "content"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnluparser/scheme/CallIntent;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/SMSIntent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/SMSIntent;->content:Ljava/lang/String;

    return-void
.end method
