.class Lcom/phicomm/speaker/PhApplication$2;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/PhApplication;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$2;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoreInitFinished()V
    .locals 0

    return-void
.end method

.method public onViewInitFinished(Z)V
    .locals 0

    return-void
.end method
