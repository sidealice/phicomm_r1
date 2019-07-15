.class public Lnluparser/scheme/GlobalCmdIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field confirm:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "confirm"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "confirm"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfirm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnluparser/scheme/GlobalCmdIntent;->confirm:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirm(Ljava/lang/String;)V
    .locals 0
    .param p1, "confirm"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lnluparser/scheme/GlobalCmdIntent;->confirm:Ljava/lang/String;

    return-void
.end method
