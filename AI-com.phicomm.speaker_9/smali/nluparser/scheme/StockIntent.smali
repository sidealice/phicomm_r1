.class public Lnluparser/scheme/StockIntent;
.super Ljava/lang/Object;
.source "StockIntent.java"

# interfaces
.implements Lnluparser/scheme/Intent;


# static fields
.field public static final HK:Ljava/lang/String; = "hk"

.field public static final SH:Ljava/lang/String; = "sh"

.field public static final SZ:Ljava/lang/String; = "sz"

.field public static final US:Ljava/lang/String; = "us"


# instance fields
.field exchange:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "exchange"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exchange"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "id"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExchange()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lnluparser/scheme/StockIntent;->exchange:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lnluparser/scheme/StockIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lnluparser/scheme/StockIntent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExchange(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lnluparser/scheme/StockIntent;->exchange:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lnluparser/scheme/StockIntent;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lnluparser/scheme/StockIntent;->name:Ljava/lang/String;

    return-void
.end method
