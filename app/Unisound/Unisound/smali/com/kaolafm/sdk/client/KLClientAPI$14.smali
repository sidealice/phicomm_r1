.class Lcom/kaolafm/sdk/client/KLClientAPI$14;
.super Ljava/lang/Object;
.source "KLClientAPI.java"

# interfaces
.implements Lcom/kaolafm/sdk/client/KLClientAPI$OnKaolaServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaolafm/sdk/client/KLClientAPI;->play(Lcom/kaolafm/sdk/client/SearchData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

.field final synthetic val$searchData:Lcom/kaolafm/sdk/client/SearchData;


# direct methods
.method constructor <init>(Lcom/kaolafm/sdk/client/KLClientAPI;Lcom/kaolafm/sdk/client/SearchData;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    iput-object p2, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 6

    .prologue
    .line 532
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    if-nez v3, :cond_0

    .line 551
    :goto_0
    return-void

    .line 536
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v3}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$500(Lcom/kaolafm/sdk/client/KLClientAPI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.edog.car"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 537
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x4f4d

    if-lt v3, v4, :cond_1

    .line 538
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v3}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v3

    iget-object v4, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    invoke-interface {v3, v4}, Lcom/kaolafm/sdk/client/IClientAPI;->playSearchData(Lcom/kaolafm/sdk/client/SearchData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 546
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 540
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/kaolafm/sdk/client/Music;

    invoke-direct {v1}, Lcom/kaolafm/sdk/client/Music;-><init>()V

    .line 541
    .local v1, "music":Lcom/kaolafm/sdk/client/Music;
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v3}, Lcom/kaolafm/sdk/client/SearchData;->getId()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/kaolafm/sdk/client/Music;->audioId:J

    .line 542
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v3}, Lcom/kaolafm/sdk/client/SearchData;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kaolafm/sdk/client/Music;->audioName:Ljava/lang/String;

    .line 543
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->val$searchData:Lcom/kaolafm/sdk/client/SearchData;

    invoke-virtual {v3}, Lcom/kaolafm/sdk/client/SearchData;->getImg()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/kaolafm/sdk/client/Music;->picUrl:Ljava/lang/String;

    .line 544
    iget-object v3, p0, Lcom/kaolafm/sdk/client/KLClientAPI$14;->this$0:Lcom/kaolafm/sdk/client/KLClientAPI;

    invoke-static {v3}, Lcom/kaolafm/sdk/client/KLClientAPI;->access$000(Lcom/kaolafm/sdk/client/KLClientAPI;)Lcom/kaolafm/sdk/client/IClientAPI;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/kaolafm/sdk/client/IClientAPI;->playMusic(Lcom/kaolafm/sdk/client/Music;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 548
    .end local v1    # "music":Lcom/kaolafm/sdk/client/Music;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 549
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
