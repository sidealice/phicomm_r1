.class public final Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/engine/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/engine/DefaultANTBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final credentials:Lcom/unisound/vui/auth/UNIOSCredentials;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unisound/vui/auth/UNIOSCredentials;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "credentials"    # Lcom/unisound/vui/auth/UNIOSCredentials;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "credentials"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    return-void
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getANTBuilder()Lcom/unisound/vui/engine/a;
    .locals 3

    new-instance v0, Lcom/unisound/vui/engine/DefaultANTBuilder;

    iget-object v1, p0, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/vui/engine/DefaultANTBuilder$Provider;->credentials:Lcom/unisound/vui/auth/UNIOSCredentials;

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/engine/DefaultANTBuilder;-><init>(Landroid/content/Context;Lcom/unisound/vui/auth/UNIOSCredentials;)V

    return-object v0
.end method
