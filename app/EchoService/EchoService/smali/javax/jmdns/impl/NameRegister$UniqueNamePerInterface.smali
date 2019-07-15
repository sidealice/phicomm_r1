.class public Ljavax/jmdns/impl/NameRegister$UniqueNamePerInterface;
.super Ljava/lang/Object;
.source "NameRegister.java"

# interfaces
.implements Ljavax/jmdns/impl/NameRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/NameRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueNamePerInterface"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Z
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public incrementHostName(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)Ljava/lang/String;
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public register(Ljava/net/InetAddress;Ljava/lang/String;Ljavax/jmdns/impl/NameRegister$NameType;)V
    .locals 0
    .param p1, "networkInterface"    # Ljava/net/InetAddress;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljavax/jmdns/impl/NameRegister$NameType;

    .prologue
    .line 37
    return-void
.end method
