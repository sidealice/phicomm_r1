.class public Lcom/phicomm/speaker/bean/Captcha;
.super Lcom/phicomm/speaker/bean/BaseResponse;
.source "Captcha.java"


# instance fields
.field private captcha:Ljava/lang/String;

.field private captchaid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/phicomm/speaker/bean/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCaptcha()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/phicomm/speaker/bean/Captcha;->captcha:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptchaid()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/phicomm/speaker/bean/Captcha;->captchaid:Ljava/lang/String;

    return-object v0
.end method

.method public setCaptcha(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/phicomm/speaker/bean/Captcha;->captcha:Ljava/lang/String;

    return-void
.end method

.method public setCaptchaid(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/phicomm/speaker/bean/Captcha;->captchaid:Ljava/lang/String;

    return-void
.end method
