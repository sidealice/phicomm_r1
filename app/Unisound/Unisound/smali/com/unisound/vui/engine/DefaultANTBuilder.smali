.class public final Lcom/unisound/vui/engine/DefaultANTBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final credentials:Lcom/unisound/vui/auth/UNIOSCredentials;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/auth/UNIOSCredentials;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "credentials"    # Lcom/unisound/vui/auth/UNIOSCredentials;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    return-void
.end method


# virtual methods
.method public createASRManager()Lcom/unisound/vui/a;
    .locals 4

    new-instance v0, Lcom/unisound/vui/a;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v2}, Lcom/unisound/vui/auth/UNIOSCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v3}, Lcom/unisound/vui/auth/UNIOSCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/unisound/vui/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNluManager()Lcom/unisound/vui/e;
    .locals 4

    new-instance v0, Lcom/unisound/vui/e;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v2}, Lcom/unisound/vui/auth/UNIOSCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v3}, Lcom/unisound/vui/auth/UNIOSCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/unisound/vui/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTTSManager()Lcom/unisound/vui/c;
    .locals 4

    new-instance v0, Lcom/unisound/vui/c;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v2}, Lcom/unisound/vui/auth/UNIOSCredentials;->getAccessKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/vui/engine/DefaultANTBuilder;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-interface {v3}, Lcom/unisound/vui/auth/UNIOSCredentials;->getSecretKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/unisound/vui/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
