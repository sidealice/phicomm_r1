.class public Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;
.super Ljava/lang/Object;
.source "RingingUtils.java"


# static fields
.field public static final RINGING_DEFAULT:Ljava/lang/String; = "happiness"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRingDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "system/unisound/ringing"

    return-object v0
.end method

.method public static getRingingFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRingingFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "defaultFile"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/utils/RingingUtils;->getRingDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .restart local v0    # "file":Ljava/io/File;
    :cond_0
    return-object v0
.end method
