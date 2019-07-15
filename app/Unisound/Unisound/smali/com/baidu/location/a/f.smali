.class Lcom/baidu/location/a/f;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/f;->a:Lcom/baidu/location/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/baidu/tempdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intime.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/location/a/f;->a:Lcom/baidu/location/a/d;

    const-string v2, "http://itsdata.map.baidu.com/long-conn-gps/sdk.php"

    invoke-static {v1, v0, v2}, Lcom/baidu/location/a/d;->a(Lcom/baidu/location/a/d;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
