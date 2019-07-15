.class Lme/shaohui/advancedluban/c$1;
.super Ljava/lang/Object;
.source "LubanCompresser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/shaohui/advancedluban/c;->a(Ljava/io/File;)Lrx/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lme/shaohui/advancedluban/c;


# direct methods
.method constructor <init>(Lme/shaohui/advancedluban/c;Ljava/io/File;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lme/shaohui/advancedluban/c$1;->b:Lme/shaohui/advancedluban/c;

    iput-object p2, p0, Lme/shaohui/advancedluban/c$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lme/shaohui/advancedluban/c$1;->b:Lme/shaohui/advancedluban/c;

    iget-object v1, p0, Lme/shaohui/advancedluban/c$1;->b:Lme/shaohui/advancedluban/c;

    invoke-static {v1}, Lme/shaohui/advancedluban/c;->a(Lme/shaohui/advancedluban/c;)Lme/shaohui/advancedluban/b;

    move-result-object v1

    iget v1, v1, Lme/shaohui/advancedluban/b;->f:I

    iget-object v2, p0, Lme/shaohui/advancedluban/c$1;->a:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lme/shaohui/advancedluban/c;->a(Lme/shaohui/advancedluban/c;ILjava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lme/shaohui/advancedluban/c$1;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
