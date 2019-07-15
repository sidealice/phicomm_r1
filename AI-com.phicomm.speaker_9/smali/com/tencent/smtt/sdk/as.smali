.class Lcom/tencent/smtt/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/ar;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/as;->a:Lcom/tencent/smtt/sdk/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".dex"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
