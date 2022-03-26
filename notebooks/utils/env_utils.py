import imageio

def random_play_env(env):
    """
    Randomly play env and return frames (array of rgb_array)
    """
    frames = []
    
    # Reset env
    env.reset()
    
    done = False
    idx = 0
    
    # Loop images
    while not done:
        # Get a random action
        action = env.action_space.sample()
        
        # Move one step
        observation, reward, done, info = env.step(action)

        # Get renderred image as array
        img_arr = env.render(mode='rgb_array')

        frames.append(img_arr)
    
    return frames

def convert_frames_to_video(frames, video_filename, fps=30):
    with imageio.get_writer(video_filename, fps=fps) as video:
        for frame in frames:
            video.append_data(frame)
