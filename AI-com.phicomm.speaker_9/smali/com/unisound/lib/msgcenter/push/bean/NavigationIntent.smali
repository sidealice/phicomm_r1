.class public Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;
.super Ljava/lang/Object;
.source "NavigationIntent.java"

# interfaces
.implements Lcom/unisound/lib/msgcenter/push/bean/Intent;
.implements Ljava/io/Serializable;


# instance fields
.field private addPassPoint:Z

.field private category:I

.field private condition:Ljava/lang/String;

.field private fLatitude:D

.field private fLontitude:D

.field private fromCity:Ljava/lang/String;

.field private fromPoi:Ljava/lang/String;

.field private pathPointLatitude:D

.field private pathPointLontitude:D

.field private pathPointName:Ljava/lang/String;

.field private sourcePckName:Ljava/lang/String;

.field private tLatitude:D

.field private tLontitude:D

.field private toCity:Ljava/lang/String;

.field private toPoi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->category:I

    return-void
.end method


# virtual methods
.method public getCategory()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->category:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public getFromCity()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fromCity:Ljava/lang/String;

    return-object v0
.end method

.method public getFromPoi()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fromPoi:Ljava/lang/String;

    return-object v0
.end method

.method public getPathPointLatitude()D
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointLatitude:D

    return-wide v0
.end method

.method public getPathPointLontitude()D
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointLontitude:D

    return-wide v0
.end method

.method public getPathPointName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePckName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->sourcePckName:Ljava/lang/String;

    return-object v0
.end method

.method public getToCity()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->toCity:Ljava/lang/String;

    return-object v0
.end method

.method public getToPoi()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->toPoi:Ljava/lang/String;

    return-object v0
.end method

.method public getfLatitude()D
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fLatitude:D

    return-wide v0
.end method

.method public getfLontitude()D
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fLontitude:D

    return-wide v0
.end method

.method public gettLatitude()D
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->tLatitude:D

    return-wide v0
.end method

.method public gettLontitude()D
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->tLontitude:D

    return-wide v0
.end method

.method public isAddPassPoint()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->addPassPoint:Z

    return v0
.end method

.method public setAddPassPoint(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->addPassPoint:Z

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->category:I

    return-void
.end method

.method public setCondition(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->condition:Ljava/lang/String;

    return-void
.end method

.method public setFromCity(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fromCity:Ljava/lang/String;

    return-void
.end method

.method public setFromPoi(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fromPoi:Ljava/lang/String;

    return-void
.end method

.method public setPathPointLatitude(D)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointLatitude:D

    return-void
.end method

.method public setPathPointLontitude(D)V
    .locals 0

    .line 98
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointLontitude:D

    return-void
.end method

.method public setPathPointName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->pathPointName:Ljava/lang/String;

    return-void
.end method

.method public setSourcePckName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->sourcePckName:Ljava/lang/String;

    return-void
.end method

.method public setToCity(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->toCity:Ljava/lang/String;

    return-void
.end method

.method public setToPoi(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->toPoi:Ljava/lang/String;

    return-void
.end method

.method public setfLatitude(D)V
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fLatitude:D

    return-void
.end method

.method public setfLontitude(D)V
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->fLontitude:D

    return-void
.end method

.method public settLatitude(D)V
    .locals 0

    .line 188
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->tLatitude:D

    return-void
.end method

.method public settLontitude(D)V
    .locals 0

    .line 206
    iput-wide p1, p0, Lcom/unisound/lib/msgcenter/push/bean/NavigationIntent;->tLontitude:D

    return-void
.end method
