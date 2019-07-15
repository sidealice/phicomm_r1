.class final Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;
.super Ljava/lang/Object;
.source "ANTServiceBinder.java"

# interfaces
.implements Lcom/unisound/vui/bootstrap/ANTEFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NativeANTEFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/bootstrap/ANTEFactory",
        "<",
        "Lcom/unisound/vui/engine/ANTEngine;",
        ">;"
    }
.end annotation


# instance fields
.field private final antEngine:Lcom/unisound/vui/engine/ANTEngine;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/auth/UNIOSCredentials;Landroid/app/Application;Lcom/unisound/vui/engine/ANTAudioSourceImpl;)V
    .locals 2
    .param p1, "credentials"    # Lcom/unisound/vui/auth/UNIOSCredentials;
    .param p2, "app"    # Landroid/app/Application;
    .param p3, "audioSource"    # Lcom/unisound/vui/engine/ANTAudioSourceImpl;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {}, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeANTEFactory"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p3, :cond_0

    .line 96
    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->aecEnable:Z

    invoke-static {p2, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setAecEnable(Landroid/content/Context;Z)V

    .line 97
    sget-boolean v0, Lcom/unisound/vui/common/config/ANTConfigPreference;->oneshotEnable:Z

    invoke-static {p2, v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->setOneshotEnable(Landroid/content/Context;Z)V

    .line 99
    :cond_0
    new-instance v0, Lcom/unisound/vui/engine/NativeANTEngine;

    new-instance v1, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;

    invoke-direct {v1, p2, p1}, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;-><init>(Landroid/content/Context;Lcom/unisound/vui/auth/UNIOSCredentials;)V

    invoke-direct {v0, v1, p3}, Lcom/unisound/vui/engine/NativeANTEngine;-><init>(Lcom/unisound/vui/engine/a$a;Lcom/unisound/client/IAudioSource;)V

    iput-object v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    .line 101
    return-void
.end method


# virtual methods
.method public newANTEngine()Lcom/unisound/vui/engine/ANTEngine;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/device/ui/service/ANTServiceBinder$NativeANTEFactory;->antEngine:Lcom/unisound/vui/engine/ANTEngine;

    return-object v0
.end method
