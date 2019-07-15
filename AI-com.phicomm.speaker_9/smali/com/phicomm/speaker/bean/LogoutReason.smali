.class public Lcom/phicomm/speaker/bean/LogoutReason;
.super Ljava/lang/Object;
.source "LogoutReason.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/phicomm/speaker/bean/LogoutReason;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LogoutReason;->reason:Ljava/lang/String;

    return-void
.end method
