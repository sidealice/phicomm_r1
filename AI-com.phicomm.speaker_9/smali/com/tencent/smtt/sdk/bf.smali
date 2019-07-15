.class Lcom/tencent/smtt/sdk/bf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/export/external/interfaces/IconListener;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebIconDatabase$a;

.field final synthetic b:Lcom/tencent/smtt/sdk/WebIconDatabase;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/WebIconDatabase;Lcom/tencent/smtt/sdk/WebIconDatabase$a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/bf;->b:Lcom/tencent/smtt/sdk/WebIconDatabase;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/sdk/WebIconDatabase$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/bf;->a:Lcom/tencent/smtt/sdk/WebIconDatabase$a;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/sdk/WebIconDatabase$a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
