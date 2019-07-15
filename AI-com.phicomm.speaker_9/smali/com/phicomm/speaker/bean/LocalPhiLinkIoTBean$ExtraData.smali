.class public Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;
.super Ljava/lang/Object;
.source "LocalPhiLinkIoTBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtraData"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16639688baaf31c3L


# instance fields
.field public hardware_version:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public rom_version:Ljava/lang/String;

.field final synthetic this$0:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

.field public udid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean$ExtraData;->this$0:Lcom/phicomm/speaker/bean/LocalPhiLinkIoTBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
