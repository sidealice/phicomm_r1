.class public Lcom/unisound/vui/data/tts/a;
.super Ljava/lang/Object;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected ttsContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getGoodMorningList()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tts_sweet_good_morning_50_1.wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tts_sweet_good_morning_50_2.wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tts_sweet_good_morning_50_3.wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getGoodNightList()Ljava/util/List;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "tts_sweet_good_night_49_1.wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tts_sweet_good_night_49_2.wav"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getRandomWord(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 5

    invoke-direct {p0}, Lcom/unisound/vui/data/tts/a;->getGoodNightList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisound/vui/data/tts/a;->getGoodMorningList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_start_dormant:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_start_dormant_12.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_cancel_collect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_cancle_25.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_add_note_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_check_on_app_48.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_collect:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_collected_24.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_open_bluetooth:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_connect_ble_15.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_close_bluetooth:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_disconnected_ble_16.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_stop_match_net:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_finish_net_20.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_good_bye_51.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_grow_up:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_grow_up.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_adjust_volume_increase:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_increase_32.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_not_listener_clear:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_listener_not_clear_05.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_net_is_weak:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_net_error_8.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_cant_find_content:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_not_content_58.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_is_already_playing:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_play_for_you_27.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_say_again:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_say_again_6.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_open_bluetooth_airplay:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_start_connect_ble_about_13.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_start_match_net:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_start_net_19.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_mode_all_repeat:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_switch_listorder_30.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_mode_shuffle:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_switch_shuffle_29.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_mode_repeat_once:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_switch_single_28.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_cant_help_you:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_unspport_cant_help_you.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_unsupport_function_7.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_i_cant:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_unsupport_unable_2.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_adjust_volume_sorry_max:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_volume_is_max_34.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_adjust_volume_sorry_min:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_volume_is_min_35.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_adjust_volume_decrease:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_decrease_33.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_music_find_song_not_match:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_no_music_57.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_start_upgrade:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_start_update_22.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_upgrade_completed:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_update_completed_23.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_not_collected_content:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_no_collect_content_31.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_want_to_music:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_music_advice_56.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_what_song_listener:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_music_wish_55.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_need_call_me:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_need_call_me_52.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_what_do_for_you:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_help_for_you_54.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_enjoy_please:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_enjoy_26.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_exit_match_net:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "tts_sweet_exit_net_21.wav"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/common/R$string;->tts_good_morning:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/unisound/vui/data/tts/a;->getRandomWord(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v3, Lcom/unisound/vui/common/R$string;->tts_good_night:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/unisound/vui/data/tts/a;->getRandomWord(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_close_ble:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_close_ble_17.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_open_bluetooth_airplay:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_close_ble_about_14.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_not_bind:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_bind_notice_59.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_memo_set_result_withouttime_exception:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_what_alrm_time_39.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_what_notice:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_what_notice_42.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_what_time_notice:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_what_time_notice_41.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_record_what:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_record_what_47.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_note_detail_info:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_note_detail_info_46.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_notice_detail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_notice_detail_43.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_reminder_count_max:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_notice_max_37.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_bootloader_welcome:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_first_word.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_countdown_detail:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_countdown_detail_45.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_count_down_count_max:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_countdown_max_38.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_countdown_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_countdown_time_44.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_alarm_count_max:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_alarm_max_36.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unisound/vui/data/tts/a;->ttsContentMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/unisound/vui/data/tts/a;->mContext:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/common/R$string;->tts_sweet_alarm_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tts_sweet_alarm_time_40.wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
