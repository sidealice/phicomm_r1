.class public Lcom/unisound/lib/usercenter/bean/LoginHeader;
.super Lcom/unisound/lib/usercenter/bean/BaseHeader;
.source "LoginHeader.java"


# instance fields
.field private account:Ljava/lang/String;

.field private extData:Ljava/lang/String;

.field private loginType:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phoneCode:Ljava/lang/String;

.field private thirdPartyId:I

.field private thirdPartyToken:Ljava/lang/String;

.field private userCell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/unisound/lib/usercenter/bean/BaseHeader;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyId:I

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->extData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic formateParam()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->formateParam()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public formateParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    return-object v0
.end method

.method public generateSignature()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/unisound/lib/usercenter/bean/LoginHeader;->buildSignature(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->loginType:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyId:I

    return v0
.end method

.method public getThirdPartyToken()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCell()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->userCell:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->account:Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "account"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->account:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->account:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    .line 154
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->extData:Ljava/lang/String;

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "extData"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->extData:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->extData:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLoginType(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->loginType:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->password:Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "password"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->password:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->password:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPhoneCode(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->phoneCode:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "phoneCode"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->phoneCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->phoneCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setThirdPartyId(I)V
    .locals 3

    .line 104
    iput p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyId:I

    .line 105
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v1, "thirdPartyId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setThirdPartyToken(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyToken:Ljava/lang/String;

    .line 134
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "thirdPartyToken"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyToken:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->thirdPartyToken:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setUserCell(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->userCell:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->params:Ljava/util/Map;

    const-string v0, "userCell"

    iget-object v1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->userCell:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/unisound/lib/usercenter/bean/LoginHeader;->userCell:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
