.class public final Lorg/xutils/http/body/BodyItemWrapper;
.super Ljava/lang/Object;
.source "BodyItemWrapper.java"


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/xutils/http/body/BodyItemWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/xutils/http/body/BodyItemWrapper;->value:Ljava/lang/Object;

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 26
    :goto_0
    iput-object p3, p0, Lorg/xutils/http/body/BodyItemWrapper;->fileName:Ljava/lang/String;

    .line 27
    return-void

    .line 24
    :cond_0
    iput-object p2, p0, Lorg/xutils/http/body/BodyItemWrapper;->contentType:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->value:Ljava/lang/Object;

    return-object v0
.end method
