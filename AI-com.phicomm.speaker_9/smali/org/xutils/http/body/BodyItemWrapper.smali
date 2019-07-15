.class public final Lorg/xutils/http/body/BodyItemWrapper;
.super Ljava/lang/Object;
.source "BodyItemWrapper.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lorg/xutils/http/body/BodyItemWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/xutils/http/body/BodyItemWrapper;->a:Ljava/lang/Object;

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "application/octet-stream"

    .line 22
    iput-object p1, p0, Lorg/xutils/http/body/BodyItemWrapper;->c:Ljava/lang/String;

    goto :goto_0

    .line 24
    :cond_0
    iput-object p2, p0, Lorg/xutils/http/body/BodyItemWrapper;->c:Ljava/lang/String;

    .line 26
    :goto_0
    iput-object p3, p0, Lorg/xutils/http/body/BodyItemWrapper;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/xutils/http/body/BodyItemWrapper;->a:Ljava/lang/Object;

    return-object v0
.end method
