.class public Lnluparser/scheme/CookBookIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field dish:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "dish"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dish"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDish()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/CookBookIntent;->dish:Ljava/lang/String;

    return-object v0
.end method

.method public setDish(Ljava/lang/String;)V
    .locals 0
    .param p1, "dish"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/CookBookIntent;->dish:Ljava/lang/String;

    return-void
.end method
