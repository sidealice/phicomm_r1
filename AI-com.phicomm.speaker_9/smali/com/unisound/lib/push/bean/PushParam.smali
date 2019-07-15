.class public Lcom/unisound/lib/push/bean/PushParam;
.super Ljava/lang/Object;


# instance fields
.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private udid:Ljava/lang/String;

.field private userLogin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/bean/PushParam;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/bean/PushParam;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/bean/PushParam;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/lib/push/bean/PushParam;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public isUserLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/lib/push/bean/PushParam;->userLogin:Z

    return v0
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/bean/PushParam;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/bean/PushParam;->appSecret:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/bean/PushParam;->token:Ljava/lang/String;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/lib/push/bean/PushParam;->udid:Ljava/lang/String;

    return-void
.end method

.method public setUserLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/lib/push/bean/PushParam;->userLogin:Z

    return-void
.end method
