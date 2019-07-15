.class public Lcom/unisound/lib/self/SelfEffectiveToken;
.super Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;
.source "SelfEffectiveToken.java"


# instance fields
.field private uversion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/unisound/lib/usercenter/bussinessbean/EffectiveToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "2.0.0"

    .line 10
    iput-object p1, p0, Lcom/unisound/lib/self/SelfEffectiveToken;->uversion:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/unisound/lib/self/SelfEffectiveToken;->uversion:Ljava/lang/String;

    return-void
.end method
